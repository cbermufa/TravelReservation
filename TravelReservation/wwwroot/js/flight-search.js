document.addEventListener('DOMContentLoaded', (event) => {
    $("#origin").autocomplete({
        source: function (request, response) {
            $.ajax({
                url: '/api/City/GetCities',
                data: { term: request.term },
                success: function (data) {
                    response($.map(data, function (item) {
                        return {
                            label: item.label,
                            value: item.label,
                            code: item.code
                        };
                    }));
                }
            });
        },
        minLength: 2,
        select: function (event, ui) {
            $("#originCode").val(ui.item.code);
        }
    });

    $("#destination").autocomplete({
        source: function (request, response) {
            $.ajax({
                url: '/api/City/GetCities',
                data: { term: request.term },
                success: function (data) {
                    response($.map(data, function (item) {
                        return {
                            label: item.label,
                            value: item.label,
                            code: item.code
                        };
                    }));
                }
            });
        },
        minLength: 2,
        select: function (event, ui) {
            $("#destinationCode").val(ui.item.code);
        }
    });

    let today = new Date().toISOString().split('T')[0];
    $("#departureDate").attr('min', today).val(today);
    $("#adults").val(1);

    $(".btnBusquedaVuelos").on('click', function (event) {
        event.preventDefault();

        clearErrors();

        let origin = $("#origin").val(),
            destination = $("#destination").val(),
            departureDate = $("#departureDate").val(),
            adults = $("#adults").val(),
            codOrigin = '',
            codDestination = '';

        const regex = /\(([^)]+)\)/;

        const textOrigin = origin;
        let coincidence = textOrigin.match(regex);

        if (coincidence) {
            codOrigin = coincidence[1];
        } else {
            showError("No se encontró ningún código de Origen en paréntesis.");
            return;
        }

        const textDestination = destination;
        coincidence = textDestination.match(regex);

        if (coincidence) {
            codDestination = coincidence[1];
        } else {
            showError("No se encontró ningún código de Destino en paréntesis.");
            return;
        }

        if (!departureDate) {
            showError("El campo Fecha de Salida es requerido.");
            return;
        }

        if (new Date(departureDate) < new Date(today)) {
            showError("La Fecha de Salida no puede ser anterior a hoy.");
            return;
        }

        if (adults < 1) {
            showError("Debe haber al menos un adulto.");
            return;
        }

        $("#flightResults").removeClass('d-none').html('<p>Buscando vuelos...</p>');

        $.ajax({
            url: '/api/Flight/GetFlightOffers',
            data: {
                origin: codOrigin,
                destination: codDestination,
                departureDate: departureDate,
                adults: adults
            },
            success: function (response) {
                const jsonObject = JSON.parse(response);

                let data = jsonObject.data,
                    aircraft = jsonObject.dictionaries.aircraft,
                    results = $("#flightResults");

                results.empty();

                if (data && data.length > 0) {
                    results.append("<h3>Resultados de Búsqueda:</h3><ul>");

                    $('#flightResults').append(`<div class="resultsContainer"></div>`);

                    for (let i = 0; i < data.length; i++) {
                        let flight = data[i];

                        let numberOfBookableSeats = flight.numberOfBookableSeats,
                            itineraries = flight.itineraries,
                            price = flight.price.total,
                            flightInfoHtml = "";

                        for (let j = 0; j < itineraries.length; j++) {
                            let segments = itineraries[j].segments;
                            flightInfoHtml += `<div class="resultsItinerariesContainer">`;

                            flightInfoHtml += `<div class="results-title">
                                    <div>Salida</div>
                                    <div>Fecha y hora de salida</div>
                                    <div>Llegada</div>
                                    <div>Fecha y hora de llegada</div>
                                    <div>Avión</div>
                                </div>`;

                            let itinerarySegments = [];

                            for (let k = 0; k < segments.length; k++) {
                                let segment = segments[k],
                                    codAircraft = segment.aircraft.code,
                                    departureAt = segment.departure.at.replace("T", " a las "),
                                    arrivalAt = segment.arrival.at.replace("T", " a las "),
                                    departureCode = segment.departure.iataCode,
                                    arrivalCode = segment.arrival.iataCode,
                                    typePlain = aircraft[codAircraft];

                                itinerarySegments.push({
                                    departureCode,
                                    departureAt,
                                    arrivalCode,
                                    arrivalAt,
                                    typePlain
                                });

                                flightInfoHtml += `
                                    <div class="result-item">
                                        <div>${departureCode}</div>
                                        <div>${departureAt}</div>
                                        <div>${arrivalCode}</div>
                                        <div>${arrivalAt}</div>
                                        <div>${typePlain}</div>
                                    </div>`;
                            }

                            flightInfoHtml += `
                                <div class="result-summary">
                                    <div>Asientos Disponibles: ${numberOfBookableSeats}</div>
                                    <div>Precio: ${price}</div>
                                    <div><button class="btn btn-primary addingShoppingCart" 
                                    data-flight='${JSON.stringify({
                                        segments: itinerarySegments,
                                        numberOfBookableSeats: numberOfBookableSeats,
                                        price: price
                                    })}'>Agregar al carrito</button></div>
                                </div>`;
                            flightInfoHtml += `</div>`;
                        }

                        $('#flightResults .resultsContainer').append(flightInfoHtml);
                    }
                    results.append("</ul>");
                } else {
                    results.append("<p>No se encontraron vuelos.</p>");
                }

                $("html, body").animate({
                    scrollTop: $("#flightResults").offset().top
                }, 1000);

                // Evento para agregar al carrito
                $(".addingShoppingCart").on('click', function () {
                    const flightData = JSON.parse($(this).attr('data-flight'));
                    console.log(flightData);
                    const adults = parseInt($("#adults").val());
                    if (parseInt(adults) <= flightData.numberOfBookableSeats) {
                        addToCart(flightData, adults);
                        showAlert("Vuelo agregado al carrito.");
                    } else {
                        showAlert("No hay suficientes asientos disponibles para el número de adultos seleccionados.");
                    }
                });
            },
            error: function () {
                showError("Ocurrió un error al obtener los vuelos.");
            }
        });
    });

    // Función para agregar al carrito y guardar en localStorage
    function addToCart(flight, adults) {
        flight.TicketsPurchased = adults;
        let cart = JSON.parse(localStorage.getItem('cart')) || [];
        cart.push(flight);
        localStorage.setItem('cart', JSON.stringify(cart));
    }

    function showAlert(message) {
        $("#modalMessageBody").html(`<div class="alert alert-success">${message}</div>`);
        $("#messageModal").modal('show');
        setTimeout(() => {
            $("#messageModal").modal('hide');
        }, 3000);
    }
    

    function showError(message) {
        $("#errorMessages").append(`<div class="alert alert-danger">${message}</div>`);
    }

    function clearErrors() {
        $("#errorMessages").empty();
    }
});
