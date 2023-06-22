<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/common/taglib.jsp" %>
    <!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>My History</title>
  <%@ include file="/common/head.jsp" %>
</head>

<body>
	<%@ include file="/common/header.jsp" %>
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
          <img src="<c:url value='templates/user/images/banner2.jpg'/>" alt="Los Angeles" class="d-block w-100 banner">
        </div>
        <div class="carousel-item">
          <img src="<c:url value='templates/user/images/banner1.jpg'/>" alt="Chicago" class="d-block w-100 banner">
        </div>
        <div class="carousel-item">
          <img src="<c:url value='templates/user/images/banner3.jpg'/>" alt="New York" class="d-block w-100 banner">
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
            <img class="image" src="images/dichvuImage1.jpg" alt="Card image" style="width:100%">
            <div class="middle">
              <div class="text">Tổ chức sự kiện</div>
            </div>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="card cardDV huCard">
            <img class="image" src="images/dichvuImage2.jpg" alt="Card image" style="width:100%">
            <div class="middle">
              <div class="text">Quay phim</div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section>
    <div class="container titletDiv">
      <div class="h2 mt-3 text-center text-uppercase mb-3 text-white">
        <p>Lịch sử xem video</p>
        <hr>
      </div>
      <div class="row">
      <c:forEach var="video" items="${videos}">
        <div class="col-lg-4">
          <div class="post-slide">
            <div class="post-img">
              <img
                src="images/tt1.jpg"
                alt="">
              <a href="<c:url value='/video?action=watch&id=${video.href}'/>" class="over-layer"><i class="fa fa-link"></i></a>
            </div>
            <div class="post-content">
              <h3 class="post-title">
                <a href="#" class="titleEdit">${video.title}</a>
              </h3>
              <span class="post-date"><i class="fa fa-clock-o"></i>${video.shares} Share</span>
              <span class="post-date"><i class="fa fa-clock-o"></i>${video.views} View</span>
              <a href="#" class="read-more">Share</a>
              <a href="#" class="read-more">Like</a>
            </div>
          </div>
        </div>
   	</c:forEach>
      </div>
      <nav aria-label="Page navigation example">
        <ul class="pagination mt-3">
          <li class="page-item"><a class="page-link" href="#">Previous</a></li>
          <li class="page-item"><a class="page-link" href="#">1</a></li>
          <li class="page-item"><a class="page-link" href="#">2</a></li>
          <li class="page-item"><a class="page-link" href="#">3</a></li>
          <li class="page-item"><a class="page-link" href="#">Next</a></li>
        </ul>
      </nav>
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
            <img class="imageTT" src="images/tt1.jpg" alt="Card image" style="width:100%">
            <div class="overlay">Đêm nhạc gala</div>
          </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6 mt-3 mb-3">
          <div class="card cardDV CardTTHu">
            <img class="imageTT" src="images/tt3.jpg" alt="Card image" style="width:100%">
            <div class="overlay">Đêm nhạc gala</div>
          </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6 mt-3 mb-3">
          <div class="card cardDV CardTTHu">
            <img class="imageTT" src="images/tt2.jpg" alt="Card image" style="width:100%">
            <div class="overlay">Đêm nhạc gala</div>
          </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6 mt-3 mb-3">
          <div class="card cardDV CardTTHu">
            <img class="imageTT" src="images/tt1.jpg" alt="Card image" style="width:100%">
            <div class="overlay">Đêm nhạc gala</div>
          </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6 mt-3 mb-3">
          <div class="card cardDV CardTTHu">
            <img class="imageTT" src="images/tt2.jpg" alt="Card image" style="width:100%">
            <div class="overlay">Đêm nhạc gala</div>
          </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6 mt-3 mb-3">
          <div class="card cardDV CardTTHu">
            <img class="imageTT" src="images/tt1.jpg" alt="Card image" style="width:100%">
            <div class="overlay">Đêm nhạc gala</div>
          </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6 mt-3 mb-3">
          <div class="card cardDV CardTTHu">
            <img class="imageTT" src="images/tt3.jpg" alt="Card image" style="width:100%">
            <div class="overlay">Đêm nhạc gala</div>
          </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6 mt-3 mb-3">
          <div class="card cardDV CardTTHu">
            <img class="imageTT" src="images/tt2.jpg" alt="Card image" style="width:100%">
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
            <img class="card-img-top" src="images/kh1.png" alt="Card image" style="width:100%">
          </div>
        </div>
        <div class="col-lg-2 col-md-2">
          <div class="card">
            <img class="card-img-top" src="images/kh2.png" alt="Card image" style="width:100%">
          </div>
        </div>
        <div class="col-lg-2 col-md-2">
          <div class="card">
            <img class="card-img-top" src="images/kh3.png" alt="Card image" style="width:100%">
          </div>
        </div>
        <div class="col-lg-2 col-md-2">
          <div class="card">
            <img class="card-img-top" src="images/kh4.png" alt="Card image" style="width:100%">
          </div>
        </div>
        <div class="col-lg-2 col-md-2">
          <div class="card">
            <img class="card-img-top" src="images/kh5.jpg" alt="Card image" style="width:100%">
          </div>
        </div>
        <div class="col-lg-2 col-md-2">
          <div class="card">
            <img class="card-img-top" src="images/kh6.jpg" alt="Card image" style="width:100%">
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- Chân trang -->
  <%@ include file="/common/footer.jsp" %>
</body>

</html>
