function validateName(name) {
    return /^[a-zA-Z]{3,}$/.test(name);
}

function validatePassword(password) {
    return password.length >= 6;
}

function validateEmail(email) {
    const emailRegex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
    return emailRegex.test(email);
}

function validatePhone(phone) {
    return /^\d{10}$/.test(phone);
}

function validateForm() {
    let isValid = true;

    // Get form values
    const name = document.getElementById('name').value.trim();
    const password = document.getElementById('password').value.trim();
    const email = document.getElementById('email').value.trim();
    const phone = document.getElementById('phone').value.trim();

    // Clear previous errors
    document.getElementById('nameError').textContent = '';
    document.getElementById('passwordError').textContent = '';
    document.getElementById('emailError').textContent = '';
    document.getElementById('phoneError').textContent = '';

    // Validate Name
    if (!validateName(name)) {
        document.getElementById('nameError').textContent = 'Name must contain at least 3 alphabets.';
        isValid = false;
    }

    // Validate Password
    if (!validatePassword(password)) {
        document.getElementById('passwordError').textContent = 'Password must be at least 6 characters.';
        isValid = false;
    }

    // Validate Email
    if (!validateEmail(email)) {
        document.getElementById('emailError').textContent = 'Enter a valid email address (e.g., example@domain.com).';
        isValid = false;
    }

    // Validate Phone
    if (!validatePhone(phone)) {
        document.getElementById('phoneError').textContent = 'Phone number must be exactly 10 digits.';
        isValid = false;
    }

    // Final validation status
    if (isValid) {
        alert('Registration Successful!');
    } else {
        alert('Please fix the errors in the form.');
    }
}
