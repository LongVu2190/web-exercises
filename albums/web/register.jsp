<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Murach's Java Servlets and JSP</title>
        <link rel="stylesheet" href="./styles/bootstrap.min.css">
        <link rel="stylesheet" href="./styles/aos.css">
        <link rel="stylesheet" href="./styles/style.css">
        <link rel="stylesheet" href="./styles/register.css">

    </head>
    <body>
        <section id="contact" class="full-height px-lg-5">
            <div class="container" style="width: 60%">

                <div class="row justify-content-center text-center">
                    <div class="col-lg-8 pb-4" data-aos="fade-up">
                        <h5 class="text-brand">Download registration</h5>
                        <h2>
                            To register for our downloads, enter your name and email
                            address below. Then, click on the Submit button.
                        </h2>
                    </div>

                    <div class="col-lg-8" data-aos="fade-up" data-aos-delay="300">
                        <form action="download" method="post" class="row g-lg-3 gy-3">
                            <input type="hidden" name="action" value="registerUser">  
                            <div class="form-group col-md-6">
                                <input type="text" class="form-control" name="firstName" placeholder="First Name" required> 
                            </div>
                            <div class="form-group col-md-6">
                                <input type="text" class="form-control" name="lastName" placeholder="Last Name">
                            </div>
                            <div class="form-group col-12">
                                <input type="text" class="form-control" name="email" placeholder="Email">
                            </div>
                            <div class="form-group col-12 d-grid">
                                <label>&nbsp;</label>
                                <button type="submit" value="Register" id="submit" class="btn btn-brand">Register</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>

        <script src="./styles/bootstrap.bundle.min.js"></script>
        <script src="./styles/aos.js"></script>
        <script src="./styles/main.js"></script>
    </body>

</html>
