<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/common/taglib.jsp" %>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
    	  <c:choose>
		  	<c:when test="${not empty sessionScope.currentUser}">
		  		<c:if test="${sessionScope.currentUser.isAdmin}">
					<button class="btn btn-dark mx-3" type="button" data-bs-toggle="offcanvas" data-bs-target="#admin">
		          		Quản trị
		        	</button>
				</c:if>	
		  		
		        <%-- <p class="text-white">Welcome: ${sessionScope.currentUser.username}</p> --%>
		  	</c:when>
		  	<%-- <c:otherwise>
		  		<p class="text-white">${sessionScope.currentUser.username}</p>
		  	</c:otherwise> --%>
		  </c:choose>
      <a class="navbar-brand" href="<c:url value='/index'/>">Glalary</a>
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
            <a class="nav-link active" aria-current="page" href="logout">Logout</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="favorite">My favorite</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="history">History</a>
          </li>
          
          <div id="google_translate_element"></div>

<script type="text/javascript">
function googleTranslateElementInit() {
  new google.translate.TranslateElement({pageLanguage: 'en'}, 'google_translate_element');
}
</script>

<script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
          
          <li class="nav-item">
            <a class="nav-link" href="#" data-bs-toggle="modal" data-bs-target="#ModalFormChangePass">${sessionScope.currentUser.username}</a>
          </li>
          <button class="btn btn-dark fa fa-user iconMenu iconHover" type="button" data-bs-toggle="modal" data-bs-target="#ModalForm"/>
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
                  <form action="login" method="POST" class="needs-validation" novalidate>
                    <div class="mb-3 mt-4">
                      <label for="username" class="form-label">Usrename</label>
                      <div class="input-group has-validation">
                        <input name="username" type="text" class="form-control" id="username" placeholder="Họ và tên (Bắt buộc)"
                          required>
                        <div class="invalid-feedback">
                          Hãy nhập tài tên tài khoản.
                        </div>
                      </div>
                    </div>
                    <div class="mb-3">
                      <label for="exampleInputPassword1" class="form-label">Password</label>
                      <input name="password" type="password" class="form-control" id="exampleInputPassword1">
                      <div class="invalid-feedback">
                        Hãy nhập tài tên tài khoản.
                      </div>
                    </div>
                    <button type="submit" class="btn btn-light mt-3">Đăng nhập</button>
                    <p>Quên tài khoản? <a href="#" data-bs-toggle="modal" data-bs-target="#ModalFormDK">Đăng
                        ký</a></p>
                      <p><a href="#" data-bs-toggle="modal" data-bs-target="#ModalFormForgotPass">Quen mat Khau</a></p>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /FORM DANG NHAP -->
        <!-- FORM DANG KY -->
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
        <!-- Form Đăng ký -->
        <div class="modal fade" id="ModalFormDK" tabindex="-1" aria-labelledby="ModalFormLabel"
          aria-hidden="true">
          <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
              <div class="modal-body">
                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"
                  aria-label="Close"></button>
                <div class="myform bg-dark">
                  <h1 class="text-center">Đăng ký Form</h1>
                  <form action="register" method="POST" class="needs-validation" novalidate>
                    <div class="mb-3 mt-4">
                      <label for="username" class="form-label">Tên tài khoản</label>
                      <div class="input-group has-validation">
                        <input name="username" type="text" class="form-control" id="username" placeholder="Họ và tên (Bắt buộc)"
                          required>
                        <div class="invalid-feedback">
                          Hãy nhập tên tài khoản của bạn.
                        </div>
                      </div>
                    </div>
                    <div class="mb-3 mt-4">
                      <label for="email" class="form-label">Địa chỉ Email</label>
                      <input name="email" type="email" class="form-control" id="email" placeholder="you@example.com" required>
                      <div class="invalid-feedback">
                        Hãy nhập địa chỉ email hợp lệ.
                      </div>
                    </div>
                    <!-- <div class="mb-3 mt-4 d-flex">
                      <div class="form-check">
                        <input id="men" name="paymentMethod" type="radio" class="form-check-input" checked
                          required>
                        <label class="form-check-label" for="men">Nam</label>
                      </div>
                      <div class="form-check m-auto">
                        <input id="male" name="paymentMethod" type="radio" class="form-check-input" required>
                        <label class="form-check-label" for="male">Nữ</label>
                      </div>
                    </div> -->
                    <div class="mb-3 mt-4">
                      <label for="exampleInputPassword1" class="form-label">Mật khẩu</label>
                      <input name="password" type="password" class="form-control" id="exampleInputPassword1" ng-model="password"
                        required>
                      <div class="invalid-feedback">
                        Hãy nhập mật khẩu của bạn.
                      </div>
                    </div>
                    <div class="mb-3">
                      <label for="exampleInputPassword1" class="form-label">Xác nhận Mật khẩu</label>
                      <input name="confirmPassword" type="password" class="form-control" id="exampleInputPassword1" ng-model="repassword"
                        required>
                      <div class="invalid-feedback">
                        Hãy xác nhận mật khẩu của bạn.
                      </div>
                    </div>
                    <button type="submit" class="btn btn-light mt-3">Đăng ký</button>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /FORM DANH KY -->
        <!-- FORM QUEN MAT KHAU -->
        <div class="modal fade" id="ModalFormForgotPass" tabindex="-1" aria-labelledby="ModalFormLabel" aria-hidden="true">
          <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
              <div class="modal-body">
                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"
                  aria-label="Close"></button>
                <div class="myform bg-dark">
                  <h1 class="text-center">FORGOT PASS</h1>
                    <div class="mb-3 mt-4">
                      <label for="username" class="form-label">Email</label>
                      <div class="input-group has-validation">
                        <input name="emailForgot" type="email" class="form-control" id="emailForgot" placeholder="Email">
                      </div>
                    </div>
                   
                    <button id="sendBtn" class="btn btn-light mt-3">SEND</button>
                      <p class="text-success" id="messageReturn"></p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /FORM QUEN MAT KHAU -->
        <!-- FORM QUEN MAT KHAU -->
        <div class="modal fade" id="ModalFormChangePass" tabindex="-1" aria-labelledby="ModalFormLabel" aria-hidden="true">
          <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
              <div class="modal-body">
                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"
                  aria-label="Close"></button>
                <div class="myform bg-dark">
                  <h1 class="text-center">FORGOT PASS</h1>
                    <div class="mb-3 mt-4">
                      <label for="username" class="form-label">Email</label>
                      <div class="input-group has-validation">
                        <input name="currentPass" type="password" class="form-control" id="currentPass" placeholder="Mật khẩu cũ">
                      </div>
                    </div>
                   <div class="mb-3 mt-4">
                      <label for="username" class="form-label">Email</label>
                      <div class="input-group has-validation">
                        <input name="newPass" type="password" class="form-control" id="newPass" placeholder="Mật khẩu mới">
                      </div>
                    </div>
                    <button id="saveChangeBtn" class="btn btn-light mt-3">SEND</button>
                      <p class="text-success" id="messageChangePass"></p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /FORM QUEN MAT KHAU -->
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
          <a href="<c:url value='/admin'/>" class="list-group-item list-group-item-action">Quản lý Video</a>
          <!-- <a href="#" class="list-group-item list-group-item-action">Quản lý khách hàng</a>
          <a href="#" class="list-group-item list-group-item-action">Báo cáo -Thống kê</a> -->
        </div>
      </div>
    </div>
    <!-- /MENU QUAN TRI -->
    <!----> <script>
    $('#sendBtn').click(function(){
		$('#messageReturn').text('');
		var email = $('#emailForgot').val();
		var formData = {'emailForgot': email};
		$.ajax({
			url: 'forgotPass',
			type: 'POST',
			data: formData
		}).then(function(data) {
			$('#messageReturn').text('Password has been reset, please');
			setTimeout(function() {
				window.location.href = 'http://localhost:8080/WebEvent/index';
			},5*1000);
		}).fail(function(error) {
			$('#messageReturn').text('You information is not correct, try again');
		});
	});
	</script>  