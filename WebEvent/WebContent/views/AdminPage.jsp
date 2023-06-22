<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/bootstrap.min.css">
  <script src="<%=request.getContextPath()%>/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/fontawesome.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/css/index.css">
  <!-- THU VIEN SLIDE SHOW -->
  <script src='<%=request.getContextPath()%>/js/jquery-1.12.0.min.js'></script>
  <script src='<%=request.getContextPath()%>/js/owl.carousel.min.js'></script>
  <link rel='stylesheet' href='<%=request.getContextPath()%>/css/owl.carousel.min.css'>
  <link rel='stylesheet' href='<%=request.getContextPath()%>https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'>
  <link rel="stylesheet" href="<%=request.getContextPath()%>/css/demoSlide.css">
  <script src="<%=request.getContextPath()%>/js/demoSLide.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <div class="container">
        <button class="btn btn-dark mx-3" type="button" data-bs-toggle="offcanvas" data-bs-target="#admin">
          Quản trị
        </button>

        <a class="navbar-brand" href="baoveIndex.html">Glalary</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          </ul>
          <form class="d-flex">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-light" type="submit">Search</button>
          </form>
          <ul class="navbar-nav mb-2 mb-lg-0">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="#">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Giới thiệu</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Tin tức</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Sự kiện</a>
            </li>
            <button class="btn btn-dark fa fa-user iconMenu iconHover" type="button" data-bs-toggle="modal"
              data-bs-target="#ModalForm"></button>
          </ul>
          <!-- FORM DANG NHAP -->
          <div class="modal fade" id="ModalForm" tabindex="-1" aria-labelledby="ModalFormLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
              <div class="modal-content">
                <div class="modal-body">
                  <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"
                    aria-label="Close"></button>
                  <div class="myform bg-dark">
                    <h1 class="text-center">ĐĂNH NHẬP</h1>
                    <form class="needs-validation" novalidate>
                      <div class="mb-3 mt-4">
                        <label for="username" class="form-label">Tên tài khoản</label>
                        <div class="input-group has-validation">
                          <input type="text" class="form-control" id="username" placeholder="Họ và tên (Bắt buộc)"
                            required>
                          <div class="invalid-feedback">
                            Hãy nhập tài tên tài khoản.
                          </div>
                        </div>
                      </div>
                      <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label">Mật khẩu</label>
                        <input type="password" class="form-control" id="exampleInputPassword1">
                        <div class="invalid-feedback">
                          Hãy nhập tài tên tài khoản.
                        </div>
                      </div>
                      <button type="submit" class="btn btn-light mt-3">Đăng nhập</button>
                      <p>Quên tài khoản? <a href="#" data-bs-toggle="modal" data-bs-target="#ModalFormDK">Đăng
                          ký</a></p>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- /FORM DANG NHAP -->
        </div>
      </div>
    </nav>
    <!-- MENU QUAN TRI -->
    <div class="offcanvas offcanvas-start" id="admin">
      <div class="offcanvas-header">
        <h1 class="offcanvas-title">Quản trị Website</h1>
        <button type="button" class="btn-close" data-bs-dismiss="offcanvas"></button>
      </div>
      <div class="offcanvas-body">
        <div class="list-group">
          <a href="#" class="list-group-item list-group-item-action">Quản lý sự kiện</a>
          <a href="#" class="list-group-item list-group-item-action">Quản lý khách hàng</a>
          <a href="#" class="list-group-item list-group-item-action">Báo cáo -Thống kê</a>
        </div>
      </div>
    </div>
    <!-- /MENU QUAN TRI -->
    <section>
      <!-- Carousel -->
      <div id="demo" class="carousel slide" data-bs-ride="carousel">

        <!-- Indicators/dots -->
        <div class="carousel-indicators">
          <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
          <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
          <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
        </div>

        <!-- The slideshow/carousel -->
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="../images/banner2.jpg" alt="Los Angeles" class="d-block w-100 banner">
          </div>
          <div class="carousel-item">
            <img src="../images/banner1.jpg" alt="Chicago" class="d-block w-100 banner">
          </div>
          <div class="carousel-item">
            <img src="../images/banner3.jpg" alt="New York" class="d-block w-100 banner">
          </div>
        </div>

        <!-- Left and right controls/icons -->
        <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
          <span class="carousel-control-prev-icon"></span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
          <span class="carousel-control-next-icon"></span>
        </button>
      </div>
    </section>
    <section>
      <div class="container titletDiv">
        <div class="h2 mt-3 text-center text-uppercase mb-3 text-white">
          <p>Dịch vụ</p>
          <hr>
        </div>
        <div class="row mb-3">
          <div class="col-lg-6">
            <div class="card cardDV huCard">
              <img class="image" src="../images/dichvuImage1.jpg" alt="Card image" style="width:100%">
              <div class="middle">
                <div class="text">Tổ chức sự kiện</div>
              </div>
            </div>
          </div>
          <div class="col-lg-6">
            <div class="card cardDV huCard">
              <img class="image" src="../images/dichvuImage2.jpg" alt="Card image" style="width:100%">
              <div class="middle">
                <div class="text">Quay phim</div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section id="sukien">
      <div class="container titletDiv">
        <div class="h2 mt-5 text-center text-uppercase mb-3 text-white">
          <p>Sự Kiện</p>
          <hr>
        </div>
        <!-- SLIDE SHOW TO CHUC SU KIEN -->
        <div class="container">
          <div class="row">
            <div class="col-md-12">
              <div id="news-slider" class="owl-carousel">
                <div class="post-slide">
                  <div class="post-img">
                    <img
                      src="https://images.unsplash.com/photo-1596265371388-43edbaadab94?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=301&ixid=eyJhcHBfaWQiOjF9&ixlib=rb-1.2.1&q=80&w=501"
                      alt="">
                    <a href="#" class="over-layer"><i class="fa fa-link"></i></a>
                  </div>
                  <div class="post-content">
                    <h3 class="post-title">
                      <a href="#">Lorem ipsum dolor sit amet.</a>
                    </h3>
                    <span class="post-date"><i class="fa fa-clock-o"></i>Out 27, 2019</span>
                    <a href="#" class="read-more">Share</a>
                    <a href="#" class="read-more">Like</a>
                  </div>
                </div>

                <div class="post-slide">
                  <div class="post-img">
                    <img
                      src="https://images.unsplash.com/photo-1533227268428-f9ed0900fb3b?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=303&ixid=eyJhcHBfaWQiOjF9&ixlib=rb-1.2.1&q=80&w=503"
                      alt="">
                    <a href="#" class="over-layer"><i class="fa fa-link"></i></a>
                  </div>
                  <div class="post-content">
                    <h3 class="post-title">
                      <a href="#">Lorem ipsum dolor sit amet.</a>
                    </h3>
                    <span class="post-date"><i class="fa fa-clock-o"></i>Out 27, 2019</span>
                    <a href="#" class="read-more">Share</a>
                    <a href="#" class="read-more">Like</a>
                  </div>
                </div>

                <div class="post-slide">
                  <div class="post-img">
                    <img
                      src="https://images.unsplash.com/photo-1564979268369-42032c5ca998?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=300&ixid=eyJhcHBfaWQiOjF9&ixlib=rb-1.2.1&q=80&w=500"
                      alt="">
                    <a href="#" class="over-layer"><i class="fa fa-link"></i></a>
                  </div>
                  <div class="post-content">
                    <h3 class="post-title">
                      <a href="#">Lorem ipsum dolor sit amet.</a>
                    </h3>
                    <span class="post-date"><i class="fa fa-clock-o"></i>Out 27, 2019</span>
                    <a href="#" class="read-more">Share</a>
                    <a href="#" class="read-more">Like</a>
                  </div>
                </div>

                <div class="post-slide">
                  <div class="post-img">
                    <img
                      src="https://images.unsplash.com/photo-1576659531892-0f4991fca82b?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=301&ixid=eyJhcHBfaWQiOjF9&ixlib=rb-1.2.1&q=80&w=501"
                      alt="">
                    <a href="#" class="over-layer"><i class="fa fa-link"></i></a>
                  </div>
                  <div class="post-content">
                    <h3 class="post-title">
                      <a href="#">Lorem ipsum dolor sit amet.</a>
                    </h3>
                    <span class="post-date"><i class="fa fa-clock-o"></i>Out 27, 2019</span>
                    <a href="#" class="read-more">Share</a>
                    <a href="#" class="read-more">Like</a>
                  </div>
                </div>

                <div class="post-slide">
                  <div class="post-img">
                    <img
                      src="https://images.unsplash.com/photo-1586083702768-190ae093d34d?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=305&ixid=eyJhcHBfaWQiOjF9&ixlib=rb-1.2.1&q=80&w=505"
                      alt="">
                    <a href="#" class="over-layer"><i class="fa fa-link"></i></a>
                  </div>
                  <div class="post-content">
                    <h3 class="post-title">
                      <a href="#">Lorem ipsum dolor sit amet.</a>
                    </h3>
                    <span class="post-date"><i class="fa fa-clock-o"></i>Out 27, 2019</span>
                    <a href="#" class="read-more">Share</a>
                    <a href="#" class="read-more">Like</a>
                  </div>
                </div>

                <div class="post-slide">
                  <div class="post-img">
                    <img
                      src="https://images.unsplash.com/photo-1484656551321-a1161420a2a0?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=306&ixid=eyJhcHBfaWQiOjF9&ixlib=rb-1.2.1&q=80&w=506"
                      alt="">
                    <a href="#" class="over-layer"><i class="fa fa-link"></i></a>
                  </div>
                  <div class="post-content">
                    <h3 class="post-title">
                      <a href="#">Lorem ipsum dolor sit amet.</a>
                    </h3>
                    <span class="post-date"><i class="fa fa-clock-o"></i>Out 27, 2019</span>
                    <a href="#" class="read-more">Share</a>
                    <a href="#" class="read-more">Like</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section>
      <div class="container titletDiv">
        <div class="h2 mt-3 text-center text-uppercase mb-3 text-white">
          <p>Tin tức Sự Kiện</p>
          <hr>
        </div>
        <div class="row">
          <div class="col-lg-3 col-md-3 col-sm-6 mt-3 mb-3">
            <div class="card cardDV CardTTHu">
              <img class="imageTT" src="../images/tt1.jpg" alt="Card image" style="width:100%">
              <div class="overlay">Đêm nhạc gala</div>
            </div>
          </div>
          <div class="col-lg-3 col-md-3 col-sm-6 mt-3 mb-3">
            <div class="card cardDV CardTTHu">
              <img class="imageTT" src="../images/tt3.jpg" alt="Card image" style="width:100%">
              <div class="overlay">Đêm nhạc gala</div>
            </div>
          </div>
          <div class="col-lg-3 col-md-3 col-sm-6 mt-3 mb-3">
            <div class="card cardDV CardTTHu">
              <img class="imageTT" src="../images/tt2.jpg" alt="Card image" style="width:100%">
              <div class="overlay">Đêm nhạc gala</div>
            </div>
          </div>
          <div class="col-lg-3 col-md-3 col-sm-6 mt-3 mb-3">
            <div class="card cardDV CardTTHu">
              <img class="imageTT" src="../images/tt1.jpg" alt="Card image" style="width:100%">
              <div class="overlay">Đêm nhạc gala</div>
            </div>
          </div>
          <div class="col-lg-3 col-md-3 col-sm-6 mt-3 mb-3">
            <div class="card cardDV CardTTHu">
              <img class="imageTT" src="../images/tt2.jpg" alt="Card image" style="width:100%">
              <div class="overlay">Đêm nhạc gala</div>
            </div>
          </div>
          <div class="col-lg-3 col-md-3 col-sm-6 mt-3 mb-3">
            <div class="card cardDV CardTTHu">
              <img class="imageTT" src="../images/tt1.jpg" alt="Card image" style="width:100%">
              <div class="overlay">Đêm nhạc gala</div>
            </div>
          </div>
          <div class="col-lg-3 col-md-3 col-sm-6 mt-3 mb-3">
            <div class="card cardDV CardTTHu">
              <img class="imageTT" src="../images/tt3.jpg" alt="Card image" style="width:100%">
              <div class="overlay">Đêm nhạc gala</div>
            </div>
          </div>
          <div class="col-lg-3 col-md-3 col-sm-6 mt-3 mb-3">
            <div class="card cardDV CardTTHu">
              <img class="imageTT" src="../images/tt2.jpg" alt="Card image" style="width:100%">
              <div class="overlay">Đêm nhạc gala</div>
            </div>
          </div>
        </div>
      </div>
      </div>
    </section>
    <section>
      <div class="container titletDiv">
        <div class="h2 mt-3 text-center text-uppercase mb-3 text-white">
          <p>Khách hàng</p>
          <hr>
        </div>
        <div class="row">
          <div class="col-lg-2 col-md-2">
            <div class="card">
              <img class="card-img-top" src="../images/kh1.png" alt="Card image" style="width:100%">
            </div>
          </div>
          <div class="col-lg-2 col-md-2">
            <div class="card">
              <img class="card-img-top" src="../images/kh2.png" alt="Card image" style="width:100%">
            </div>
          </div>
          <div class="col-lg-2 col-md-2">
            <div class="card">
              <img class="card-img-top" src="../images/kh3.png" alt="Card image" style="width:100%">
            </div>
          </div>
          <div class="col-lg-2 col-md-2">
            <div class="card">
              <img class="card-img-top" src="../images/kh4.png" alt="Card image" style="width:100%">
            </div>
          </div>
          <div class="col-lg-2 col-md-2">
            <div class="card">
              <img class="card-img-top" src="../images/kh5.jpg" alt="Card image" style="width:100%">
            </div>
          </div>
          <div class="col-lg-2 col-md-2">
            <div class="card">
              <img class="card-img-top" src="../images/kh6.jpg" alt="Card image" style="width:100%">
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Chân trang -->
    <footer class="bg-dark text-center text-lg-start mt-5 text-white">
      <!-- container -->
      <div class="container p-4">
        <!--Grid row-->
        <div class="row">
          <!--Grid column-->
          <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
            <a href="#">
              <img src="Image/logo2.png" style="width:200px;" alt="logo">
            </a>
            <div class="mt-3">
              <p><strong>Địa chỉ:</strong> 124/67/22 Xô Viết Nghệ Tĩnh, Phường 21, Quận Bình Thạnh, TPHCM</p>
              <p><strong>Hotline:</strong> 0866 777 797</p>
              <p><strong>Email:</strong> mynsport@gamil.com</p>
            </div>
          </div>
          <!--Grid column-->

          <!--Grid column-->
          <div class="col-lg-3 col-md-6 mb-4 mb-md-0 mt-3 cotFOoter">
            <!-- <h5 class="text-uppercase mb-0">Cửa hàng</h5> -->

            <ul class="list-unstyled">
              <li class="mt-3 h4">
                Cửa hàng
              </li>
              <li class="mt-3">
                <a href="#" class="text-dark text-decoration-none chuFooter">Giới thiệu</a>
              </li>
              <li class="mt-3">
                <a href="#" class="text-dark text-decoration-none chuFooter">Tin tức</a>
              </li>
              <li class="mt-3">
                <a href="#" class="text-dark text-decoration-none chuFooter">Liên hệ</a>
              </li>
              <li class="mt-3">
                <a href="#" class="text-dark text-decoration-none chuFooter">Bảo mật</a>
              </li>
            </ul>
          </div>
          <!--Grid column-->

          <!--Grid column-->
          <div class="col-lg-3 col-md-6 mb-4 mb-md-0 mt-3 cotFOoter">
            <!-- <h5 class="text-uppercase">Theo dõi</h5> -->
            <ul class="list-unstyled mb-0">
              <li class="mt-3 h4">
                Theo dõi
              </li>
              <li class="mt-3">
                <a href="#" class="text-dark text-decoration-none">Facebook</a>
              </li>
              <li class="mt-3">
                <a href="#" class="text-dark text-decoration-none">Instagram</a>
              </li>
              <li class="mt-3">
                <a href="#" class="text-dark text-decoration-none">Twitter</a>
              </li>
              <li class="mt-3">
                <a href="#" class="text-dark text-decoration-none">Zalo</a>
              </li>
            </ul>
          </div>
          <!--Grid column-->

          <!--Grid column-->
          <div class="col-lg-3 col-md-6 mb-4 mb-md-0 mt-3 cotFOoter">

            <ul class="list-unstyled mb-0">
              <li class="mt-3 h4">
                Dịch Vụ
              </li>
              <li class="mt-3">
                <a href="#" class="text-dark text-decoration-none">Dịch vụ thanh toán</a>
              </li>
              <li class="mt-3">
                <a href="#" class="text-dark text-decoration-none">Chính sách đổi trả</a>
              </li>
              <li class="mt-3">
                <a href="#" class="text-dark text-decoration-none">Chính sách vận chuyển</a>
              </li>
              <li class="mt-3">
                <a href="#" class="text-dark text-decoration-none">Chính sách bảo hành</a>
              </li>
            </ul>
          </div>
          <!--Grid column-->
        </div>
        <!--Grid row-->
      </div>
      <!-- Grid container -->
    </footer>
</body>
</html>