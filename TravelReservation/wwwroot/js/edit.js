document.addEventListener('DOMContentLoaded', (event) => {
    // Verificar cambios en el formulario de perfil
    const nameInput = document.querySelector('#Name');
    const phoneNumberInput = document.querySelector('#PhoneNumber');
    const passwordInput = document.querySelector('#Password');
    const confirmPasswordInput = document.querySelector('#ConfirmPassword');
    const saveChangesButton = document.querySelector('#saveChangesButton');
    
    // Radio buttons
    const preferredSeatRadios = document.querySelectorAll('input[name="PreferredSeat"]');
    const preferredMealRadios = document.querySelectorAll('input[name="PreferredMeal"]');
    const preferredAirlineRadios = document.querySelectorAll('input[name="PreferredAirline"]');

    console.log(preferredSeatRadios, preferredMealRadios, preferredAirlineRadios);

    const form = document.querySelector('#editProfileForm');

    if (!nameInput || !phoneNumberInput || !passwordInput || !confirmPasswordInput || !saveChangesButton || !form) {
        console.error('Uno o más elementos del formulario no fueron encontrados.');
        return;
    }

    let initialFormData = {
        name: nameInput.value,
        phoneNumber: phoneNumberInput.value,
        password: passwordInput.value,
        confirmPassword: confirmPasswordInput.value,
        preferredSeat: document.querySelector('input[name="PreferredSeat"]:checked')?.value || '',
        preferredMeal: document.querySelector('input[name="PreferredMeal"]:checked')?.value || '',
        preferredAirline: document.querySelector('input[name="PreferredAirline"]:checked')?.value || ''
    };

    console.log('Initial Form? ', initialFormData);

    function checkFormChanges() {
        const currentFormData = {
            name: nameInput.value,
            phoneNumber: phoneNumberInput.value,
            password: passwordInput.value,
            confirmPassword: confirmPasswordInput.value,
            preferredSeat: document.querySelector('input[name="PreferredSeat"]:checked')?.value || '',
            preferredMeal: document.querySelector('input[name="PreferredMeal"]:checked')?.value || '',
            preferredAirline: document.querySelector('input[name="PreferredAirline"]:checked')?.value || ''
        };

        const formChanged = (
            currentFormData.name !== initialFormData.name ||
            currentFormData.phoneNumber !== initialFormData.phoneNumber ||
            currentFormData.password !== '' ||
            currentFormData.confirmPassword !== '' ||
            currentFormData.preferredSeat !== initialFormData.preferredSeat ||
            currentFormData.preferredMeal !== initialFormData.preferredMeal ||
            currentFormData.preferredAirline !== initialFormData.preferredAirline
        );

        const passwordsMatch = currentFormData.password === currentFormData.confirmPassword;
        const passwordValid = currentFormData.password.length === 0 || (
            currentFormData.password.length >= 6 &&
            currentFormData.password.length <= 20 &&
            /[a-z]/.test(currentFormData.password) &&
            /[A-Z]/.test(currentFormData.password) &&
            /\d/.test(currentFormData.password) &&
            /[\W_]/.test(currentFormData.password)
        );

        saveChangesButton.disabled = !formChanged || !passwordsMatch || !passwordValid;

        console.log('Form Changed? ', formChanged);

        if (formChanged) {
            if (!passwordsMatch) {
                confirmPasswordInput.setCustomValidity('Las contraseñas no coinciden.');
            } else {
                confirmPasswordInput.setCustomValidity('');
            }

            if (!passwordValid && currentFormData.password.length > 0) {
                passwordInput.setCustomValidity('La contraseña debe tener entre 6 y 20 caracteres, e incluir al menos una letra mayúscula, una letra minúscula, un número y un carácter especial.');
            } else {
                passwordInput.setCustomValidity('');
            }
        } else {
            // Limpiar mensajes de validación si el formulario no ha cambiado
            confirmPasswordInput.setCustomValidity('');
            passwordInput.setCustomValidity('');
            clearValidationErrors();
        }
    }

    function clearValidationErrors() {
        document.querySelectorAll('.text-danger').forEach((el) => el.textContent = '');
        document.querySelectorAll('.input-validation-error').forEach((el) => el.classList.remove('input-validation-error'));
        document.querySelectorAll('.field-validation-error').forEach((el) => {
            el.classList.remove('field-validation-error');
            el.classList.add('field-validation-valid');
        });
    }

    [nameInput, phoneNumberInput, passwordInput, confirmPasswordInput].forEach(input => {
        input.addEventListener('input', checkFormChanges);
    });

    [...preferredSeatRadios, ...preferredMealRadios, ...preferredAirlineRadios].forEach(radio => {
        radio.addEventListener('change', checkFormChanges);
    });

    checkFormChanges(); // Inicializa el estado del botón al cargar la página

    // También ejecutar la limpieza de validaciones al cargar la página
    clearValidationErrors();

    form.addEventListener('submit', async (event) => {
        event.preventDefault(); // Evitar el comportamiento predeterminado del formulario

        const formData = new FormData(form);

        try {
            const response = await fetch(form.action, {
                method: form.method,
                body: formData,
                headers: {
                    'X-Requested-With': 'XMLHttpRequest',
                },
            });

            const result = await response.json();

            if (result.success) {
                alert('Perfil actualizado exitosamente!');
                // Lógica para redirigir a otra página o actualizar la vista actual, debo aún de modificar el mensaje de perfil actualizado para que se vea en pantalla y no como un alert
            } else {
                console.log(result.errors);
                for (const key in result.errors) {
                    const errorElement = document.querySelector(`[data-valmsg-for="${key}"]`);
                    if (errorElement) {
                        errorElement.textContent = result.errors[key];
                    }
                }
            }
        } catch (error) {
            console.error('Error al actualizar el perfil:', error);
        }
    });
});
