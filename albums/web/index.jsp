<!DOCTYPE html>
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
                        <h4 class="text-brand">List of albums</h4>
                        <h1>User Email: ${cookie.userEmail.value}</h1>
                    </div>
                </div>

                <div class="row gy-4">

                    <div class="col-md-4" data-aos="fade-up">
                        <div class="card-custom rounded-4 bg-base shadow-effect">
                            <div class="card-custom-content p-4">
                                <h5 class="mb-4">86 (the band) - True Life Songs and Pictures</h5>
                                <a href="download?action=checkUser&amp;productCode=8601" class="link-custom">Download</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4" data-aos="fade-up" data-aos-delay="300">
                        <div class="card-custom rounded-4 bg-base shadow-effect">
                            <div class="card-custom-content p-4">
                                <h5 class="mb-4">Paddlefoot - The First CD</h5>
                                <a href="download?action=checkUser&amp;productCode=pf01" class="link-custom">Download</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4" data-aos="fade-up">
                        <div class="card-custom rounded-4 bg-base shadow-effect">
                            <div class="card-custom-content p-4">
                                <h5 class="mb-4">Paddlefoot - The Second CD</h5>
                                <a href="download?action=checkUser&amp;productCode=pf02" class="link-custom">Download</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4" data-aos="fade-up"  data-aos-delay="300">
                        <div class="card-custom rounded-4 bg-base shadow-effect">
                            <div class="card-custom-content p-4">
                                <h5 class="mb-4">Joe Rut - Genuine Wood Grained Finish</h5>
                                <a href="download?action=checkUser&amp;productCode=jr01" class="link-custom">Download</a>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </section>

        <script src="./styles/bootstrap.bundle.min.js"></script>
        <script src="./styles/aos.js"></script>
        <script src="./styles/main.js"></script>
    </body>
</html>