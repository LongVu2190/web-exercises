<html>
    <head>
        <meta charset="utf-8">
        <title>Murach's Java Servlets and JSP</title>
        <link rel="stylesheet" href="./styles/bootstrap.min.css">
        <link rel="stylesheet" href="./styles/aos.css">
        <link rel="stylesheet" href="./styles/style.css">
        <style>
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

        <section id="" class="full-height px-lg-5">
            <div class="container">

                <div class="row pb-4" data-aos="fade-up">
                    <div class="col-lg-8">
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

                                    <h3 class="mb-3" style="color: #e0f780">${item.product.description}</h3>
                                    <h5 class="mb-3">Price: ${item.product.priceCurrencyFormat}</h5>
                                    <form class="row g-3">
                                        <input type="hidden" name="productCode" value="${item.product.code}">
                                        <div class="col-auto quantity">
                                            <h6 style="padding-top: 10px">Quantity: </h6>
                                        </div>
                                        <div class="col-auto">
                                            <input type="text" name="quantity" value="${item.quantity}" class="form-control" placeholder="Password">
                                        </div>
                                        <div class="col-auto">
                                            <button type="submit" value="Update" class="btn btn-primary mb-3">Update</button>
                                        </div>
                                    </form>

                                    <h5 class="mb-3">Total: ${item.totalCurrencyFormat}</h5>

                                    <a href="cart?productCode=${item.product.code}&amp;quantity=0" class="link-custom h4">Remove</a>
                                </div>
                            </div>
                        </div>
                    </c:forEach>


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
        </section>

        <script src="./styles/bootstrap.bundle.min.js"></script>
        <script src="./styles/aos.js"></script>
        <script src="./styles/main.js"></script>
    </body>
</html>