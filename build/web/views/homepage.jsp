<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Home</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet"
              href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <script
        src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script
        src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script
        src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet"
              href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            <%@include file="/css/homepage.css" %>
        </style>
    <body>
        <jsp:include page="header.jsp" />

        <%
            if (request.getAttribute("isBought") != null) {
                if (Integer.parseInt(request.getAttribute("isBought").toString()) == 0) {
                    out.print("<script> alert('You ordered successfull , back to homepage') </script>");
                }
            }
        %>
        <section class="main">
            <div class="container">
                <div id="carouselExampleIndicators" class="carousel slide"
                     data-ride="carousel">

                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0"
                            class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    </ol>

                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="${pageContext.request.contextPath}/img/carousel1.jpg"
                                 class="d-block w-100" alt="blabla">
                            <div class="carousel-caption d-none d-md-block">
                                <h5>First slide label</h5>
                                <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img
                                src="${pageContext.request.contextPath}/img/carousel2.jpg"
                                class="d-block w-100" alt="...">
                            <div class="carousel-caption d-none d-md-block">
                                <h3>First slide label</h3>
                                <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="${pageContext.request.contextPath}/img/carousel3.jpg" class="d-block w-100" alt="...">
                            <div class="carousel-caption d-none d-md-block">
                                <h5>First slide label</h5>
                                <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
                            </div>
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleIndicators"
                       role="button" data-slide="prev"> <span
                            class="carousel-control-prev-icon" aria-hidden="true"></span> <span
                            class="sr-only">Previous</span>
                    </a> <a class="carousel-control-next" href="#carouselExampleIndicators"
                            role="button" data-slide="next"> <span
                            class="carousel-control-next-icon" aria-hidden="true"></span> <span
                            class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        </section>
        <!--  End of carousel->>
        
        <!-- Service -->
        <section class="services py-5 text-center">
            <div class="container">
                <div class="container-fluid welcome ">
                    <div class="col-12">
                        <h1 class="display-4 font-weight-bold " style="text-transform: uppercase">Some Infomation about us</h1>
                    </div>
                    <hr>
                </div>
                <div class="row">
                    <!-- Single Service -->
                    <div class="col-10 mx-auto col-md-6 col-lg-4 my-3">
                        <span class="service-icon">
                            <i class="fa fa-globe fa-2x"></i>
                        </span>
                        <h5 clas="font-weight-bold text-uppercase">
                            Worldwide Shipping
                        </h5>
                        <p class="text-capitalize"> hehehe</p>
                    </div>
                    <div class="col-10 mx-auto col-md-6 col-lg-4 my-3">
                        <span class="service-icon">
                            <i class="fa fa-user-o fa-2x" aria-hidden="true"></i>


                        </span>
                        <h5 clas="font-weight-bold text-uppercase">
                            Certificated by Win.Corp
                        </h5>
                        <p class="text-capitalize"> hehehe</p>
                    </div>
                    <div class="col-10 mx-auto col-md-6 col-lg-4 my-3">
                        <span class="service-icon">
                            <i class="fa fa-money fa-2x" aria-hidden="true"></i>

                        </span>
                        <h5 clas="font-weight-bold text-uppercase">
                            30 days money back
                        </h5>
                        <p class="text-capitalize"> Some</p>
                    </div>
                </div>
            </div>
        </section>

        <section id="product" class="products py-5">
            <h2 id="title-product" class="text-center font-weight-bold  " style="text-transform: uppercase"> Collection Summer</h2>
            <div class="container">
                <<div class="row row-cols-1 row-cols-md-3">
                    <div class="col-sm-4 mb-4">
                        <div class="card h-100">
                            <img src="${pageContext.request.contextPath}/img/collection1.JPG" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mb-4">
                        <div class="card h-100">
                            <img src="${pageContext.request.contextPath}/img/collection2.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mb-4">
                        <div class="card h-100">
                            <img src="${pageContext.request.contextPath}/img/collection3.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mb-4">
                        <div class="card h-100">
                            <img src="${pageContext.request.contextPath}/img/collection4.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mb-4">
                        <div class="card h-100">
                            <img src="${pageContext.request.contextPath}/img/collection5.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            </div>
                        </div>
                    </div>                 
                    <div class="col-md-4 mb-4">
                        <div class="card h-100">
                            <img src="${pageContext.request.contextPath}/img/collection6.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>



        <section class="testimontials">
            <div class="container inner ">
                <h1 class="text-center font-weight-bold " style="text-transform: uppercase"> Somes review about company</h1>

                <div class="border"></div>

                <div class="row ">
                    <div class="col-sm-4">
                        <div class="testimontial">
                            <img src="${pageContext.request.contextPath}/img/p1.jpg">
                            <div class="name "> Hailey Bieber </div>
                            <div class="star">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <p>Viet cai gi cung dc </p>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="testimontial">
                            <img src="${pageContext.request.contextPath}/img/p2.jpg">
                            <div class="name "> G.Dragon </div>
                            <div class="star">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star-half-o" aria-hidden="true"></i>

                            </div>
                            <p>cha la ce cha la ca</p>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="testimontial">
                            <img src="${pageContext.request.contextPath}/img/p3.jpg">
                            <div class="name "> Lisa </div>
                            <div class="star">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <p>Look at me </p>
                        </div>
                    </div>
                </div>  
            </div>
        </section>

        <jsp:include page="footer.jsp" />

    </body>
</html>