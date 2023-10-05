<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="styles/main.css">
    <link rel="stylesheet" href="styles/thanks.css">
</head>

<body>

    <div class="card">
        <h1>Thanks for joining our email list</h1>
        <p>Here is the information that you entered:</p>

        <p>Email:</p>
        <span>${user.email}</span><br>

        <p>First Name:</p>
        <span>${user.firstName}</span><br>

        <p>Last Name:</p>
        <span>${user.lastName}</span><br>

        <p>How did you hear about us:</p>
        <span>${user.heardFrom}</span><br>
    
        <p>Like that:</p>
        <span>${user.likeThat}</span><br>
    
        <p>Send email announcements:</p>
        <span>${user.wantsUpdates}</span><br>
    
        <p>Contact you by:</p>
        <span>${user.contactVia}</span><br>

        <p>
            To enter another email address, click on the Back button in your browser or the Return button shown below.
        </p>

        <button onclick="window.location.href = 'index.html';" type="submit" value="Return" class="comic-button">
            Return
        </button>

    </div>
</body>

</html>