<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Murach's Java Servlets and JSP</title>
        <link rel="stylesheet" href="./styles/bootstrap.min.css">
        <link rel="stylesheet" href="./styles/aos.css">
        <link rel="stylesheet" href="./styles/style.css">
        <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
        <style>
            body {
                padding-top: 100px;
            }
            #container {
                width: 75%;
            }
        </style>
    </head>
    <body>
        <a href="http://longvu.midjava.com#work" style="position: fixed;
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

        <script src="./styles/bootstrap.bundle.min.js"></script>
        <script src="./styles/aos.js"></script>
        <script src="./styles/main.js"></script>
    </body>

</html>
