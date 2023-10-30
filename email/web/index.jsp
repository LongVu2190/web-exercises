<%@ include file="/includes/header.html" %>
<a href="http://longvu.pantech.vn#work" style="position: fixed;
   width: 70px;
   height: 70px;
   bottom: 40px;
   right: 40px;
   background-color: #045b66;
   color: #fff;
   border-radius: 50px;
   text-align: center;
   font-size: 26px;">
    <i class="las la-home" style="margin-top: 22px;"></i>
</a>

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