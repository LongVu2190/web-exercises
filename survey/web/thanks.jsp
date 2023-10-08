<!DOCTYPE html>
<html lang="en-US">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thanks</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css">
    <link rel="stylesheet" href="styles/thanks.css" type="text/css">
</head>

<body>

    <div id="card">
        <h1>Thanks for joining our email list</h1>
        <p>Here is the information that you entered:</p>

        <div>
            <p>Email:</p>
            <span>${user.email}</span><br>
        </div>

        <div>
            <p>First Name:</p>
            <span>${user.firstName}</span><br>
        </div>

        <div>
            <p>Last Name:</p>
            <span>${user.lastName}</span><br>
        </div>

        <div>
            <p>How did you hear about us:</p>
            <span>${user.heardFrom}</span><br>
        </div>

        <c:if test="${user.wantsUpdates == 'Yes'}">
            <div>
                <p>Send email announcements:</p>
                <span>${user.wantsUpdates}</span><br>
            </div>
        </c:if>    

        <div>
            <p>Contact you by:</p>
            <span>${user.contactVia}</span><br>
        </div>

        <p>
            To enter another email address, click on the Back button in your browser or the Return button shown below.
        </p>

        <button onclick="window.location.href = 'index.html';" type="submit" value="Return" class="comic-button">
            Return
        </button>

    </div>
</body>

</html>