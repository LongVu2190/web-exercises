<!DOCTYPE html>
<html lang="en-US">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Thanks</title>
        <link rel="stylesheet" href="styles/main.css" type="text/css" />
        <link rel="stylesheet" href="styles/thanks.css" type="text/css" />
    </head>
    <body>
        <div id="thank">
            <h1>Thanks for joining our email list</h1>
            <p>Here is the information that you entered:</p>

            <div>
                <p>First Name:</p>
                <span>${user.firstName}</span><br>
            </div>

            <div>
                <p>Last Name:</p>
                <span>${user.lastName}</span><br>
            </div>

            <div>
                <p>Email:</p>
                <span>${user.email}</span><br>
            </div>

            <div>
                <p>This email address was added to our list on: </p>
                <span>${requestScope.currentDate}</span><br>
            </div>

            <div>
                <p>The first address on our list is: </p>
                <span>${sessionScope.users[0].email}</span><br>
            </div>

            <div>
                <p>The sedond address on our list is: </p>
                <span>${sessionScope.users[1].email}</span><br>
            </div>

            <div>
                <p>For customer service, contact: </p>
                <span>${initParam.custServEmail}</span><br>
            </div>

            <p>
                To enter another email address, click on the Back button in your browser or the Return button shown below.
            </p>

            <button onclick="window.location.href = 'index.jsp';" type="submit" value="Return" class="comic-button">
                Return
            </button>
        </div>
        <%@ include file="/includes/footer.jsp" %>