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
        <div class="container">

            <div class="row pb-4" data-aos="fade-up">
                <div class="col-lg-8">
                    <h4 class="text-brand">Downloads</h4>
                    <h1>86 (the band) - True Life Songs and Pictures</h1>
                </div>
            </div>

            <div class="row gy-4">

                <div class="col-md-4" data-aos="fade-up">
                    <div class="card-custom rounded-4 bg-base shadow-effect">
                        <div class="card-custom-content p-4">
                            <h5 class="mb-4">You Are a Star</h5>
                            <a href="/albums/sound/${productCode}/star.mp3" class="link-custom">MP3</a>
                        </div>
                    </div>
                </div>

                <div class="col-md-4" data-aos="fade-up">
                    <div class="card-custom rounded-4 bg-base shadow-effect">
                        <div class="card-custom-content p-4">
                            <h5 class="mb-4">Don't Make No Difference</h5>
                            <a href="/albums/sound/${productCode}/no_difference.mp3" class="link-custom">MP3</a>
                        </div>
                    </div>
                </div>

                <div class="row row-cols-2" style="padding-top: 50px">
                    <div class="form-group col-12 d-grid" data-aos="fade-up" data-aos-delay="300">
                        <a href="?action=viewAlbums" id="submit" class="btn btn-brand">View list of albums</a>
                    </div>

                    <div class="form-group col-12 d-grid" data-aos="fade-up" data-aos-delay="300">
                        <a href="?action=viewCookies" id="submit" class="btn btn-brand">View all cookies</a>
                    </div>
                </div>
            </div>
        </div>

        <script src="./styles/bootstrap.bundle.min.js"></script>
        <script src="./styles/aos.js"></script>
        <script src="./styles/main.js"></script>
    </body>
</html>