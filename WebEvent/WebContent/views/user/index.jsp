<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/common/taglib.jsp" %>
    <!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>HomeUser</title>
  <%@ include file="/common/head.jsp" %>
</head>

<body>
	<%@ include file="/common/header.jsp" %>
  <%-- <section>
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
            <img class="image" src=" <c:url value='templates/user/images/dichvuImage1.jpg'/>" alt="Card image" style="width:100%">
            <div class="middle">
              <div class="text">Tổ chức sự kiện</div>
            </div>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="card cardDV huCard">
            <img class="image" src="<c:url value='templates/user/images/dichvuImage2.jpg'/>" alt="Card image" style="width:100%">
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
                  <a href="https://www.youtube.com/watch?v=GFr-S-hfmwg" class="over-layer"><i class="fa fa-link"></i></a>
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
  </section> --%>
  <section>
    <div class="container titletDiv">
      <div class="h2 mt-3 text-center text-uppercase mb-3 text-white">
        <p>Video Sự Kiện</p>
        <hr>
      </div>
      <div class="row">
      <c:forEach var="video" items="${videos}">
        <div class="col-lg-4">
          <div class="post-slide">
            <div class="post-img">
              <img
                src="<c:url value='${video.poster}'/>"
                alt="">
              <a href="<c:url value='/video?action=watch&id=${video.href}'/>" class="over-layer"><i class="fa fa-link"></i></a>
            </div>
            <div class="post-content">
              <h3 class="post-title">
                <a href="<c:url value='/video?action=watch&id=${video.href}'/>" class="titleEdit">${video.title}</a>
              </h3>
              <%-- <span class="post-date"><i class="fa fa-clock-o"></i>${video.shares} Share</span> --%>
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
        	<c:if test="${currrentPage == 1}">
        		<li class="page-item"><a class="page-link disabled" href="#">Previous</a></li>
        	</c:if>
          <c:if test="${currrentPage > 1}">
          	<li class="page-item"><a class="page-link" href="index?page=${currrentPage - 1}">Previous</a></li>
          </c:if>
          <c:forEach varStatus="i" begin="1" end="${maxPage}">
          	<li class="page-item"><a class="page-link ${currrentPage == i.index ? 'active' : ''}" href="index?page=${i.index}">${i.index}</a></li>
          </c:forEach>
          <c:if test="${currrentPage == maxPage}">
        		<li class="page-item"><a class="page-link disabled" href="#">Next</a></li>
        	</c:if>
          <c:if test="${currrentPage < maxPage}">
          	<li class="page-item"><a class="page-link" href="index?page=${currrentPage + 1}">Next</a></li>
          </c:if>
          <!-- <li class="page-item"><a class="page-link" href="#">2</a></li>
          <li class="page-item"><a class="page-link" href="#">3</a></li>
          <li class="page-item"><a class="page-link" href="#">Next</a></li> -->
        </ul>
      </nav> 
    </div>
  </section>
  <section>
    <div class="container titletDiv mt-3">
      <div class="h2 mt-3 text-center text-uppercase mb-3 text-white">
        <p>Tin tức Sự Kiện</p>
        <hr>
      </div>
      <div class="row">
        <div class="col-lg-3 col-md-3 col-sm-6 mt-3 mb-3">
          <div class="card cardDV CardTTHu">
            <img class="imageTT" src="templates/user/images/tt1.jpg" alt="Card image" style="width:100%">
            <div class="overlay">Đêm nhạc gala</div>
          </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6 mt-3 mb-3">
          <div class="card cardDV CardTTHu">
            <img class="imageTT" src="templates/user/images/tt3.jpg" alt="Card image" style="width:100%">
            <div class="overlay">Đêm nhạc gala</div>
          </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6 mt-3 mb-3">
          <div class="card cardDV CardTTHu">
            <img class="imageTT" src="templates/user/images/tt2.jpg" alt="Card image" style="width:100%">
            <div class="overlay">Đêm nhạc gala</div>
          </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6 mt-3 mb-3">
          <div class="card cardDV CardTTHu">
            <img class="imageTT" src="templates/user/images/tt1.jpg" alt="Card image" style="width:100%">
            <div class="overlay">Đêm nhạc gala</div>
          </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6 mt-3 mb-3">
          <div class="card cardDV CardTTHu">
            <img class="imageTT" src="templates/user/images/tt2.jpg" alt="Card image" style="width:100%">
            <div class="overlay">Đêm nhạc gala</div>
          </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6 mt-3 mb-3">
          <div class="card cardDV CardTTHu">
            <img class="imageTT" src="templates/user/images/tt1.jpg" alt="Card image" style="width:100%">
            <div class="overlay">Đêm nhạc gala</div>
          </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6 mt-3 mb-3">
          <div class="card cardDV CardTTHu">
            <img class="imageTT" src="templates/user/images/tt3.jpg" alt="Card image" style="width:100%">
            <div class="overlay">Đêm nhạc gala</div>
          </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6 mt-3 mb-3">
          <div class="card cardDV CardTTHu">
            <img class="imageTT" src="templates/user/images/tt2.jpg" alt="Card image" style="width:100%">
            <div class="overlay">Đêm nhạc gala</div>
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
            <img class="card-img-top" src="templates/user/images/kh1.png" alt="Card image" style="width:100%">
          </div>
        </div>
        <div class="col-lg-2 col-md-2">
          <div class="card">
            <img class="card-img-top" src="templates/user/images/kh2.png" alt="Card image" style="width:100%">
          </div>
        </div>
        <div class="col-lg-2 col-md-2">
          <div class="card">
            <img class="card-img-top" src="templates/user/images/kh3.png" alt="Card image" style="width:100%">
          </div>
        </div>
        <div class="col-lg-2 col-md-2">
          <div class="card">
            <img class="card-img-top" src="templates/user/images/kh4.png" alt="Card image" style="width:100%">
          </div>
        </div>
        <div class="col-lg-2 col-md-2">
          <div class="card">
            <img class="card-img-top" src="templates/user/images/kh5.jpg" alt="Card image" style="width:100%">
          </div>
        </div>
        <div class="col-lg-2 col-md-2">
          <div class="card">
            <img class="card-img-top" src="templates/user/images/kh6.jpg" alt="Card image" style="width:100%">
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- Chân trang -->
  <%@ include file="/common/footer.jsp" %>
</body>

</html>
