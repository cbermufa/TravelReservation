document.addEventListener('DOMContentLoaded', (event) => {
    // Helper function to add event listeners if the element exists
    function addEventListenerIfExists(selector, event, handler) {
        const element = document.querySelector(selector);
        if (element) {
            element.addEventListener(event, handler);
        } else {
            console.warn(`Elemento no encontrado: ${selector}`);
        }
    }

    // Verificar si el usuario está logueado
    const isUserLoggedIn = !!document.querySelector('#logoutLink');

    if (isUserLoggedIn) {
        //// Link Home
        //addEventListenerIfExists('#homeLink', 'click', (e) => {
        //    window.location.href = '/';
        //});

        

        // Link de mi perfil
        addEventListenerIfExists('#myProfileLink', 'click', (e) => {
            e.preventDefault(); // Previene el comportamiento predeterminado del enlace
            window.location.href = '/Account/EditProfile'; // Redirige a la página de perfil
        });

        // link de mis reservaciones
        addEventListenerIfExists('#myReservationsLink', 'click', (e) => {
            window.location.href = '/Flight/Reservations'; // Redirige a la página de perfil
        });

        // link de logout
        addEventListenerIfExists('#logoutLink', 'click', (e) => {
            e.preventDefault(); // Previene el comportamiento predeterminado del enlace
            // Crea y envía un formulario POST para cerrar sesión
            logoutUserAntiForgery();
        });

        function logoutUserAntiForgery() {
            // Crea y envía un formulario POST para cerrar sesión
            const form = document.createElement('form');
            form.method = 'POST';
            form.action = '/Account/Logout';

            // Token anti-forgery
            const token = document.createElement('input');
            token.type = 'hidden';
            token.name = '__RequestVerificationToken';
            token.value = document.querySelector('input[name="__RequestVerificationToken"]').value;

            form.appendChild(token);
            document.body.appendChild(form);
            form.submit();
        }

        // Auto logout por inactividad
        let timeout;

        function resetTimeout() {
            clearTimeout(timeout);
            timeout = setTimeout(logoutUser, 300000); // 5 minutos = 300000 ms
        }

        function logoutUser() {
            alert('Sesión cerrada por inactividad');
            clearTimeout(timeout); // Detiene el temporizador para que no siga ejecutándose
            logoutUserAntiForgery();
            setTimeout(() => {
                // Redireccionar a la página de inicio después de cerrar sesión
                window.location.href = '/';
            }, 1000); // Espera 1 segundo antes de redirigir para asegurarse de que la sesión se cierre correctamente
        }

        window.onload = resetTimeout;
        document.onmousemove = resetTimeout;
        document.onkeydown = resetTimeout;
    }

    // link de login
    addEventListenerIfExists('#loginLink', 'click', (e) => {
        e.preventDefault(); // Previene el comportamiento predeterminado del enlace
        window.location.href = '/Account/Login'; // Redirige a la página de login
    });

    // link de registro
    addEventListenerIfExists('#registerLink', 'click', (e) => {
        e.preventDefault(); // Previene el comportamiento predeterminado del enlace
        window.location.href = '/Account/Register'; // Redirige a la página de registro
    });

    // link de registro
    addEventListenerIfExists('#homeLink', 'click', (e) => {
        e.preventDefault(); // Previene el comportamiento predeterminado del enlace
        window.location.href = '/'; // Redirige a la página de inicio
    });

    // Link de buscar vuelos
    addEventListenerIfExists('#searchFlightsLink', 'click', (e) => {
        e.preventDefault(); // Previene el comportamiento predeterminado del enlace
        window.location.href = '/Flight/Search'; // Redirige a la página de buscar vuelos
    });
 
   
    
});
