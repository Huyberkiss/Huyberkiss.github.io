<%-- 
    Document   : about
    Created on : Jul 23, 2020, 8:26:52 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
        <title>JSP Page</title>
        <style>

        </style>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <div class="bg-light">
            <div class="container py-5 mt-5">
                <div class="row h-100 align-items-center py-5">
                    <div class="col-lg-6">
                        <h1 class="display-4">About us</h1>
                        <p class="lead text-muted mb-0">Buy something make values</p>

                        </p>
                    </div>
                    <div class="col-lg-6 d-none d-lg-block"><img src="${pageContext.request.contextPath}/img/shop.jpg" alt="" class="img-fluid"></div>
                </div>
            </div>
        </div>

        <div class="bg-white py-5">
            <div class="container py-5">
                <div class="row align-items-center mb-5">
                    <div class="col-lg-6 order-2 order-lg-1"><i class="fa fa-bar-chart fa-2x mb-3 text-primary"></i>
                        <h2 class="font-weight-light">Our Story</h2>
                        <p class="font-italic text-muted mb-4">
                            Born and raised in Guatemala, I have been surrounded by nature, color and warmth my entire life. These elements make an essential part of my upbringing and who
                            I am today. Nature is raw, strong and beautiful and one of the driving forces behind my passion: jewelry.
                            Following my dreams has not been without difficulties but in the face of obstacles it is my determination and strength that has 
                            shaped me into the woman I am today. I wanted to create a brand that reflected stories of strength and beauty appealing to women from diff
                            erent backgrounds. My designs aim to empower women in the same way strong women have inspired me. When I met Yuvy, I was instantly drawn to his en
                            ergy and determination. His ambitious drive became a source of inspiration for me. Together, I had no doubt, we had the power to make our creative dreams
                            a reality.
                        </p>
                    </div>
                    <div class="col-lg-5 px-5 mx-auto order-1 order-lg-2"><img src="https://res.cloudinary.com/mhmd/image/upload/v1556834139/img-1_e25nvh.jpg" alt="" class="img-fluid mb-4 mb-lg-0"></div>
                </div>
                <div class="row align-items-center">
                    <div class="col-lg-5 px-5 mx-auto"><img src="https://res.cloudinary.com/mhmd/image/upload/v1556834136/img-2_vdgqgn.jpg" alt="" class="img-fluid mb-4 mb-lg-0"></div>
                    <div class="col-lg-6"><i class="fa fa-leaf fa-2x mb-3 text-primary"></i>
                        <h2 class="font-weight-light">Our Mission</h2>
                        <p class="font-italic text-muted mb-4">
                            Prompted by Alessandra’s Guatemalan origins and Yuvraj’s family vast experience within the jewellery industry based in Dubai,
                            our brand features unique designs rooted in the collision of two distinct philosophies; empowering unity in its success. As 
                            a result of both this forward-thinking approach and our individual experiences Alessa Jewelry has, in under a decade, gained a global following 
                            and established itself as one of the most meaningful and creative emerging talents in the fine jewellery industry, that is without constraints.
                            Our brand balances the classical with the contemporary across its eclectic yet unmistakable collections, each meticulously designed and hand-crafted 
                            with the finest materials available and coming with a lifetime guarantee. The imagination and heart combined with this impeccable quality that every
                            Alessa piece ensues, has created an incredible loyalty with clients, which has been recognized by the most prestigious stores globally. Strongly 
                            inspired by the Latin-American as well as Indian ethos, Alessa kindles a modern, vibrant and edgy allure destined to fulfill the desires of women 
                            and men of all ages.

                            INTRODUCING huyber'S COLLECTIONS

                            learn about each one
                            OUR</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="bg-light py-5">
            <div class="container py-5">
                <div class="row mb-4">
                    <div class="col-lg-5">
                        <h2 class="display-4 font-weight-light">Our team</h2>
                        <p class="font-italic text-muted">Here is my team</p>
                    </div>
                </div>

                <div class="row text-center">
                    <!-- Team item-->
                    <div class="col-xl-6 col-sm-6 mb-5">
                        <div class="bg-white rounded shadow-sm py-5 px-4"><img src="https://res.cloudinary.com/mhmd/image/upload/v1556834132/avatar-4_ozhrib.png" alt="" width="100" class="img-fluid rounded-circle mb-3 img-thumbnail shadow-sm">
                            <h5 class="mb-0">Huyber</h5><span class="small text-uppercase text-muted">CEO - Founder</span>
                            <ul class="social mb-0 list-inline mt-3">
                                <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-facebook-f"></i></a></li>

                                <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-instagram"></i></a></li>

                            </ul>
                        </div>
                    </div>
                    <!-- End-->

                    <!-- Team item-->
                    <div class="col-xl-6 col-sm-6 mb-5">
                        <div class="bg-white rounded shadow-sm py-5 px-4"><img src="https://res.cloudinary.com/mhmd/image/upload/v1556834130/avatar-3_hzlize.png" alt="" width="100" class="img-fluid rounded-circle mb-3 img-thumbnail shadow-sm">
                            <h5 class="mb-0">Quoc Bao</h5><span class="small text-uppercase text-muted">CFO</span>
                            <ul class="social mb-0 list-inline mt-3">
                                <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-facebook-f"></i></a></li>

                                <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-instagram"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- End-->

                    </body>
                    </html>
