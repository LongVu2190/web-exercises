<html>
    <head>
        <meta charset="utf-8">
        <title>Murach's Java Servlets and JSP</title>
        <link rel="stylesheet" href="./styles/bootstrap.min.css">
        <link rel="stylesheet" href="./styles/aos.css">
        <link rel="stylesheet" href="./styles/style.css">
    </head>
    <body>
        <section id="" class="full-height px-lg-5">
            <div class="container">

                <div class="row pb-4" data-aos="fade-up">
                    <div class="col-lg-8">
                        <h4 class="text-brand">Cookies</h4>
                        <h1>Here's a table with all of the cookies that this browser is sending to the current server.</h1>
                    </div>
                </div>


                <div class="row gy-4">

                    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
                    <c:forEach var="c" items="${cookie}">     
                        <div class="col-md-4" data-aos="fade-up">
                            <div class="card-custom rounded-4 bg-base shadow-effect">
                                <div class="card-custom-content p-4">
                                    <h4 class="mb-4">${c.value.name}</h4>       
                                    <a class="link-custom">${c.value.value}</a>
                                </div>
                            </div>
                        </div>
                    </c:forEach>                  

                    <div class="form-group col-12 d-grid" data-aos="fade-up" data-aos-delay="300">
                        <a href="download?action=viewAlbums" id="submit" class="btn btn-brand">View list of albums</a>
                    </div>

                    <div class="form-group col-12 d-grid" data-aos="fade-up" data-aos-delay="600">
                        <a href="download?action=deleteCookies" id="submit" class="btn btn-brand">Delete all persistent cookies</a>
                    </div>
                </div>
            </div>
        </section>

        <script src="./styles/bootstrap.bundle.min.js"></script>
        <script src="./styles/aos.js"></script>
        <script src="./styles/main.js"></script>
    </body>
</html>
