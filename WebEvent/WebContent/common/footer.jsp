<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Chân trang -->
  <footer class="bg-dark text-center text-lg-start mt-5 text-white">
    <!-- container -->
    <div class="container p-4">
      <!--Grid row-->
      <div class="row">
        <!--Grid column-->
        <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
          <!-- <a href="#">
            <img src="Image/logo2.png" style="width:200px;" alt="logo">
          </a> -->
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
 <script>
 /* $('#saveChangeBtn').click(function(){
		$('#messageChangePass').text('');
		var currentPass = $('#currentPass').val();
		var newPass = $('#newPass').val();
		var formData = {'currentPass': currentPass,
						'newPass': newPass};
		$.ajax({
			url: 'changePass',
			type: 'POST',
			data: formData
		}).then(function(data) {
			$('#messageReturn').text('Password has been changed');
		}).fail(function(error) {
			$('#messageReturn').text('You information is not correct, try again');
		});
	}); */
 
 $('#saveChangeBtn').click(function(){
		$('#messageChangePass').text('');
		var currentPass = $('#currentPass').val();
		var newPass = $('#newPass').val();
		var formData = {
				'currentPass': currentPass,
				'newPass': newPass
				};

		$.ajax({
			url: 'changePass',
			type: 'POST',
			data: formData
		}).then(function(data) {
			$('#messageChangePass').text('Your password has been changed succesfully');
		}).fail(function(error) {
			$('#messageChangePass').text('Your password is not correct, try again');
		});
	});
</script>