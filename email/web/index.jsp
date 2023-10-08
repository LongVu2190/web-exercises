<%@ include file="/includes/header.html" %>

<div id="emailForm">
    <form action="EmailListServlet" method="post">
        <h1>Join our email list</h1>
        <p>Join our email list, enter your name and email address below.</p>
        <input type="hidden" name="action" value="add">

        <input class="information" placeholder="First Name" type="text" name="firstName"><br>
        <input class="information" placeholder="Last Name" type="text" name="lastName"><br>
        <input class="information" placeholder="Email" type="email" name="email"><br>

        <p style="color:red"><i> ${message}</i></p>
        <label>&nbsp;</label>
        <input type="submit" value="Submit" id="submit" class="comic-button">
    </form>
</div>

<%@ include file="/includes/footer.jsp" %>