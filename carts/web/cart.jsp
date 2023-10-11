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
                padding-top: 50px;
            }
            .col-md-4 {
                width: 50%;
            }
            #quantity {
                font-weight: 700;
                font-family: "Bai Jamjuree", sans-serif;
                padding-top: 10px;
            }
            .btn {
                --bs-btn-line-height: 0.8;
                margin: 0px;
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
                <div class="col-lg-12">
                    <h1 class="text-brand" style="color: white">Your cart</h1>
                    <h4>To change the quantity, enter the new quantity and click on the Update button.</h4>
                </div>
            </div>

            <div class="row gy-4">

                <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
                <c:forEach var="item" items="${cart.items}">
                    <div class="col-md-4" data-aos="fade-up">
                        <div class="card-custom rounded-4 bg-base shadow-effect">
                            <div class="card-custom-content p-4">

                                <h5 class="mb-3" style="color: #e0f780">${item.product.description}</h5>
                                <h6 class="mb-3">Price: ${item.product.priceCurrencyFormat}, Total: ${item.totalCurrencyFormat}</h6>
                                <form class="row g-3">
                                    <input type="hidden" name="productCode" value="${item.product.code}">
                                    <div class="col-auto quantity">
                                        <h7 style="padding-top: 10px">Quantity: </h7>
                                    </div>
                                    <div class="col-auto">
                                        <input type="text" name="quantity" value="${item.quantity}" class="form-control" placeholder="Password">
                                    </div>
                                    <div class="col-auto">
                                        <button type="submit" value="Update" class="btn btn-primary mb-3">Update</button>
                                    </div>
                                </form>

                                <a href="cart?productCode=${item.product.code}&amp;quantity=0" class="link-custom h5">Remove</a>
                            </div>
                        </div>
                    </div>
                </c:forEach>
                <div class="row row-cols-2" style="padding-top: 20px;">
                    <form action="" method="post">
                        <div class="form-group col-12 d-grid" data-aos="fade-up" data-aos-delay="300">
                            <input type="hidden" name="action" value="shop">
                            <input href="?action=viewAlbums" type="submit" value="Continue Shopping" class="btn btn-brand"></input>
                        </div>
                    </form>

                    <form action="checkout.jsp" method="post">
                        <div class="form-group col-12 d-grid" data-aos="fade-up" data-aos-delay="300">
                            <input type="hidden" name="action" value="checkout">
                            <input href="?action=viewAlbums" type="submit" value="Checkout" class="btn btn-brand"></input>
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