<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>${video.title}</title>
<%@ include file="/common/head.jsp" %>
</head>
<body>
	<%@ include file="/common/header.jsp" %>
	<section>
        <div class="container mt-5">
            <div class="row">
                <div class="col-md-12 mx-auto">
                    <div class="post-slide">
                        <div class="ratio ratio-16x9">
                            <iframe width="560" height="315" src="https://www.youtube.com/embed/${video.href}"
                                title="YouTube video player" frameborder="0"
                                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                                allowfullscreen></iframe>
                        </div>
                        <div class="post-content">
                            <h3 class="post-title">
                                <a href="#">${video.title}</a>
                            </h3>
                            <span class="post-date"><i class="fa fa-clock-o"></i>Out 27, 2020</span>
                            <c:if test="${not empty sessionScope.currentUser}">
                            	<a href="#" class="read-more" data-bs-toggle="modal" data-bs-target="#shareModal">Share</a>
                            	<button id="likeOrUnlike" href="<c:url value='/video?action=like&id=${video.href}'/>" class="read-more">
                            		<c:choose>
									<c:when test="${flagLikedA == true}">
										Unlike
									</c:when>
									<c:otherwise>Like</c:otherwise>
								</c:choose>
                            	</button>
                            </c:if>
                            
                            <span class="post-date mx-3"><i class="fa fa-thumbs-o-up"></i>100K</span>
                            <span class="post-date"><i class="fa fa-share"></i>50K</span>
                            <!-- MODAL SHARE EMAIL VIDEO -->
                            <div class="modal fade" id="shareModal">
                                <div class="modal-dialog">
                                  <div class="modal-content">
                              
                                    <!-- Modal Header -->
                                    <div class="modal-header">
                                      <h4 class="modal-title">Nhập địa chỉ Email</h4>
                                      <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                    </div>
                              
                                    <!-- Modal body -->
                                    <div class="modal-body">
                                        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                    </div>
                              
                                    <!-- Modal footer -->
                                    <div class="modal-footer">
                                        <button type="submit" class="btn btn-dark" data-bs-dismiss="modal">send</button>
                                      <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                                    </div>
                              
                                  </div>
                                </div>
                              </div>
                            <p class="h5 text-black">Mô tả nội dung</p>
                            <p class="motaND text-black"> ${video.description}
                            </p> 
                            
                           <!--  <button type="button" class="read-more readMore" data-bs-toggle="collapse" data-bs-target="#moreND">Xem thêm</button> -->
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
        <input id="videoIdhid" type="hidden" value="${video.href}">
    </section>
    <section id="sukien">
    <div class="container titletDiv">
      <div class="h2 mt-5 text-center text-uppercase mb-3 text-white">
        <p>Lịch sử xem video</p>
        <hr>
      </div>
      <!-- SLIDE SHOW TO CHUC SU KIEN -->
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div id="news-slider" class="owl-carousel">
            <c:forEach var="video" items="${videos}">
            	<div class="post-slide">
                <div class="post-img">
                  <img
                    src="<c:url value='${video.poster}'/>"
                    alt="">
                  <a href="<c:url value='/video?action=watch&id=${video.href}'/>" class="over-layer"><i class="fa fa-link"></i></a>
                </div>
                <div class="post-content">
                  <h3 class="post-title">
                    <a href="<c:url value='/video?action=watch&id=${video.href}'/>">${video.title}</a>
                  </h3>
                  <!-- <span class="post-date"><i class="fa fa-clock-o"></i>Out 27, 2019</span> -->
                  <%-- <span class="post-date"><i class="fa fa-clock-o"></i>${video.shares} Share</span> --%>
              		<span class="post-date"><i class="fa fa-clock-o"></i>${video.views} View</span>
                </div>
              	</div>
            </c:forEach>
              
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <%-- <section id="sukien">
    <div class="container titletDiv">
      <div class="h2 mt-5 text-center text-uppercase mb-3 text-white">
        <p>Video Yêu thích</p>
        <hr>
      </div>
      <!-- SLIDE SHOW TO CHUC SU KIEN -->
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div id="news-slider" class="owl-carousel">
            <c:forEach var="video" items="${videosFavorite}">
            	<div class="post-slide">
                <div class="post-img">
                  <img
                    src="<c:url value='${video.poster}'/>"
                    alt="">
                  <a href="<c:url value='/video?action=watch&id=${video.href}'/>" class="over-layer"><i class="fa fa-link"></i></a>
                </div>
                <div class="post-content">
                  <h3 class="post-title">
                    <a href="<c:url value='/video?action=watch&id=${video.href}'/>">${video.title}</a>
                  </h3>
                  <!-- <span class="post-date"><i class="fa fa-clock-o"></i>Out 27, 2019</span> -->
                  <span class="post-date"><i class="fa fa-clock-o"></i>${video.shares} Share</span>
              		<span class="post-date"><i class="fa fa-clock-o"></i>${video.views} View</span>
                </div>
              	</div>
            </c:forEach>
              
            </div>
          </div>
        </div>
      </div>
    </div>
  </section> --%>
    <!-- Chân trang -->
  <%@ include file="/common/footer.jsp" %>
  <!-- <script>
  	$('#likeOrUnlike').click(function(){
  		var videoId = $('#videoIdhid').val();
  		$.ajax({
  			url: 'video?action=like&id=' + videoId
  		}).then(function(data){
  			var text = $('#likeOrUnlike').text();
  			if(text.indexOf('like') != -1){
  				$('#likeOrUnlike').text('Unlike');
  			}else{
  				$('#likeOrUnlike').text('Like');
  			}
  		}).fail(function(error){
  			alert('fail try again');
  		})
  	});
  </script> -->
  <!-- --><script>
		$('#likeOrUnlike').click(function() {
			var videoId = $('#videoIdhid').val();
			$.ajax({
				url: 'video?action=like&id='+videoId
			}).then(function(data) {
				var text = $('#likeOrUnlike').text();
				if(text.indexOf('Like') != -1){
					$('#likeOrUnlike').text('Unlike');
				}else{
					$('#likeOrUnlike').text('Like');
				}
			}).fail(function(error) {
				alert('opppp');
			})
		});
	</script>
</body>
</html>