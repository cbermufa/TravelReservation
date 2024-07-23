document.addEventListener('DOMContentLoaded', () => {
    const cartItemsContainer = document.getElementById('cartItemsContainer');
    const cartTotalElement = document.getElementById('cartTotal');

    async function checkAuthentication() {
        try {
            const response = await fetch('/api/Account/IsAuthenticated');
            const isAuthenticated = await response.json();
            return isAuthenticated;
        } catch (error) {
            console.error("Error checking authentication status", error);
            return false;
        }
    }

    function loadCart() {
        const cart = JSON.parse(localStorage.getItem('cart')) || [];
        cartItemsContainer.innerHTML = '';
        let total = 0;
        //console.log(cart);
        if (cart.length > 0) {
            cart.forEach((flight, index) => {
                const flightPrice = parseFloat(flight.price);
                //console.log(flight);
                total += flightPrice;

                let flightInfoHtml = `
                    <div class="card mb-3">
                        <div class="card-body">
                            <div class="results-title">
                                <div>Salida</div>
                                <div>Fecha y hora de salida</div>
                                <div>Llegada</div>
                                <div>Fecha y hora de llegada</div>
                                <div>Avión</div>
                            </div>`;

                flight.segments.forEach(segment => {
                    flightInfoHtml += `
                        <div class="result-item">
                            <div>${segment.departureCode}</div>
                            <div>${segment.departureAt}</div>
                            <div>${segment.arrivalCode}</div>
                            <div>${segment.arrivalAt}</div>
                            <div>${segment.typePlain}</div>
                        </div>`;
                });

                flightInfoHtml += `
                        <div class="result-summary">
                            <div>Asientos seleccionados: ${flight.TicketsPurchased}</div>
                            <div>Precio: $${flightPrice.toFixed(2)}</div>
                            <div><button class="btn btn-danger removeFromCart" data-index="${index}">Eliminar</button></div>
                        </div>
                    </div>
                </div>`;

                cartItemsContainer.innerHTML += flightInfoHtml;
            });

            cartTotalElement.textContent = total.toFixed(2);
        } else {
            cartItemsContainer.innerHTML = '<p>No hay vuelos en el carrito.</p>';
        }

        document.querySelectorAll('.removeFromCart').forEach(button => {
            button.addEventListener('click', function () {
                const index = parseInt(this.getAttribute('data-index'));
                removeFromCart(index);
            });
        });
    }

    function removeFromCart(index) {
        let cart = JSON.parse(localStorage.getItem('cart')) || [];
        cart.splice(index, 1);
        localStorage.setItem('cart', JSON.stringify(cart));
        loadCart();
    }

    function clearCart() {
        localStorage.removeItem('cart');
        loadCart();
    }

    $("#checkout").on('click', async function () {
        if (confirm("¿Está seguro de que desea reservar estos vuelos?")) {
            const isAuthenticated = await checkAuthentication();

            if (isAuthenticated) {
                showProcessingMessage();
                setTimeout(function () {
                    let cart = JSON.parse(localStorage.getItem('cart')) || [];
                    let cartFlights = cart.map(flight => {
                        return flight.segments.map(segment => ({
                            Origin: segment.departureCode,
                            Destination: segment.arrivalCode,
                            DepartureDate: segment.departureAt,
                            ArrivalDate: segment.arrivalAt,
                            TicketsPurchased: flight.TicketsPurchased
                        }));
                    }).flat();
                    $.ajax({
                        url: '/api/Flight/Checkout',
                        method: 'POST',
                        contentType: 'application/json',
                        data: JSON.stringify(cartFlights),
                        success: function () {
                            showAlert("Reserva completada exitosamente.", () => {
                                localStorage.removeItem('cart');
                                window.location.href = "/Flight/Reservations";
                            });
                        },
                        error: function () {
                            showError("Ocurrió un error al procesar la reserva.");
                        }
                    });
                }, 5000);
            } else {
                showAlert("Debe iniciar sesión para realizar la reserva.", () => {
                    window.location.href = "/Account/Login";
                });
            }
        }
    });

    function showProcessingMessage() {
        $("#modalMessageBody").html('<div class="alert alert-info">Procesando...</div>');
        $("#messageModal").modal('show');
    }

    function showAlert(message, callback) {
        $("#modalMessageBody").html(`<div class="alert alert-success">${message}</div>`);
        $("#messageModal").modal('show');
        setTimeout(() => {
            $("#messageModal").modal('hide');
            if (callback) callback();
        }, 3000);
    }

    function showError(message) {
        $("#modalMessageBody").html(`<div class="alert alert-danger">${message}</div>`);
        $("#messageModal").modal('show');
    }

    loadCart();
    document.getElementById('clearCart').addEventListener('click', clearCart);
});
