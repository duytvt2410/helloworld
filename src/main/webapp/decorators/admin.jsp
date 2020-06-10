<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>SB Admin - Dashboard</title>

<!-- Custom fonts for this template-->
<link href="<c:url value = '/template/admin/vendor/fontawesome-free/css/all.min.css'/>" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<!-- Custom styles for this template-->
<link href="<c:url value = '/template/admin/css/sb-admin-2.min.css'/>" rel="stylesheet">
<link href="<c:url value = '/template/admin/vendor/datatables/dataTables.bootstrap4.min.css' />" rel="stylesheet">

        <!-- jQuery
    ====================================================================== -->
    <script src="<c:url value = '/template/admin/vendor/jquery/jquery.min.js' />"></script>
    
		<!-- Fine Uploader jQuery JS file
    ====================================================================== -->
   <script
	src="<c:url value = '/template/admin/vendor/dropzone/dist/dropzone.js' />"></script>
<link
	href="<c:url value = '/template/admin/vendor/dropzone/dist/dropzone.css' />"
	rel="stylesheet">
	
<link
	href="<c:url value = '/template/admin/vendor/build/css/style.css' />"
	rel="stylesheet">	

      <style>

        

#msform {
    text-align: center;
    position: relative;
    margin-top: 20px
}

#msform fieldset .form-card {
    background: white;
    border: 0 none;
    border-radius: 0px;
    padding: 20px 40px 30px 40px;
    box-sizing: border-box;
    width: 94%;
    margin: 0 3% 20px 3%;
    position: relative
}

#msform fieldset {
    background: white;
    border: 0 none;
    border-radius: 0.5rem;
    box-sizing: border-box;
    width: 100%;
    margin: 0;
    padding-bottom: 20px;
    position: relative
}

#msform fieldset:not(:first-of-type) {
    display: none
}

#msform fieldset .form-card {
    text-align: left;
    color: #9E9E9E
}


#msform .action-button {
    width: 100px;
    background: skyblue;
    font-weight: bold;
    color: white;
    border: 0 none;
    border-radius: 0px;
    cursor: pointer;
    padding: 10px 5px;
    margin: 10px 5px
}

#msform .action-button:hover,
#msform .action-button:focus {
    box-shadow: 0 0 0 2px white, 0 0 0 3px skyblue
}

#msform .action-button-previous {
    width: 100px;
    background: #616161;
    font-weight: bold;
    color: white;
    border: 0 none;
    border-radius: 0px;
    cursor: pointer;
    padding: 10px 5px;
    margin: 10px 5px
}

#msform .action-button-previous:hover,
#msform .action-button-previous:focus {
    box-shadow: 0 0 0 2px white, 0 0 0 3px #616161
}

select.list-dt {
    border: none;
    outline: 0;
    border-bottom: 1px solid #ccc;
    padding: 2px 5px 3px 5px;
    margin: 2px
}

select.list-dt:focus {
    border-bottom: 2px solid skyblue
}

.card {
    z-index: 0;
    border: none;
    border-radius: 0.5rem;
    position: relative
}

#progressbar {
    margin-bottom: 30px;
    overflow: hidden;
    color: lightgrey
}

#progressbar .active {
    color: #000000
}

#progressbar li {
    list-style-type: none;
    font-size: 12px;
    width: 33%;
    float: left;
    position: relative
}

#progressbar #step1:before {
    font-family: FontAwesome;
    content: "1"
}

#progressbar #step2:before {
    font-family: FontAwesome;
    content: "2"
}

#progressbar #step3:before {
    font-family: FontAwesome;
    content: "3"
}

#progressbar li:before {
    width: 50px;
    height: 50px;
    line-height: 45px;
    display: block;
    font-size: 18px;
    color: #ffffff;
    background: lightgray;
    border-radius: 50%;
    margin: 0 auto 10px auto;
    padding: 2px
}

#progressbar li:after {
    content: '';
    width: 100%;
    height: 2px;
    background: lightgray;
    position: absolute;
    left: 0;
    top: 25px;
    z-index: -1
}

#progressbar li.active:before,
#progressbar li.active:after {
    background: skyblue
}
    </style>
    
</head>
<body id="page-top">
  <!-- Page Wrapper -->
	<div id="wrapper">
	  	<!-- menu -->
		<%@ include file="/common/admin/menu.jsp"%>
	    <!-- Content Wrapper -->
	    <div id="content-wrapper" class="d-flex flex-column">
	
	      <!-- Main Content -->
	      <div id="content">
	      	<!-- header -->
			<%@ include file="/common/admin/header.jsp"%>
					
			<!-- body -->
			<dec:body/>
	      </div>
	      	<!-- footer -->
			<%@ include file="/common/admin/footer.jsp"%>
	    </div>
	
  	</div>
  	
  	<script type="text/javascript">
	$(function () {
	    setNavigation();
	});

	function setNavigation() {
	    var path = window.location.pathname;
	   
	    $(".li_active a").each(function () {
	        var href = $(this).attr('href');
	        if (path === href) {
	        	$(this).closest('.collapse_active').addClass('show');
	            $(this).addClass('active');
	            $(this).closest('.li_active').addClass('active');
	        }
	    });
	}  	
	
	$(document).ready(function(){

		var current_fs, next_fs, previous_fs; //fieldsets
		var opacity;

		$(".next").click(function(){

		current_fs = $(this).parent();
		next_fs = $(this).parent().next();

		//Add Class Active
		$("#progressbar li").eq($("fieldset").index(next_fs)).addClass("active");

		//show the next fieldset
		next_fs.show();
		//hide the current fieldset with style
		current_fs.animate({opacity: 0}, {
		step: function(now) {
		// for making fielset appear animation
		opacity = 1 - now;

		current_fs.css({
		'display': 'none',
		'position': 'relative'
		});
		next_fs.css({'opacity': opacity});
		},
		duration: 600
		});
		});

		$(".previous").click(function(){

		current_fs = $(this).parent();
		previous_fs = $(this).parent().prev();

		//Remove class active
		$("#progressbar li").eq($("fieldset").index(current_fs)).removeClass("active");

		//show the previous fieldset
		previous_fs.show();

		//hide the current fieldset with style
		current_fs.animate({opacity: 0}, {
		step: function(now) {
		// for making fielset appear animation
		opacity = 1 - now;

		current_fs.css({
		'display': 'none',
		'position': 'relative'
		});
		previous_fs.css({'opacity': opacity});
		},
		duration: 600
		});
		});

		$('.radio-group .radio').click(function(){
		$(this).parent().find('.radio').removeClass('selected');
		$(this).addClass('selected');
		});

		$(".submit").click(function(){
		return false;
		})

		});
  	</script>
	<!-- Bootstrap core JavaScript-->

	<script src="<c:url value = '/template/admin/vendor/bootstrap/js/bootstrap.bundle.min.js' />"></script>

	<!-- Core plugin JavaScript-->
	<script src="<c:url value = '/template/admin/vendor/jquery-easing/jquery.easing.min.js' />"></script>

	<!-- Custom scripts for all pages-->
	<script src="<c:url value = '/template/admin/js/sb-admin-2.min.js' />"></script>
	
	<script src="<c:url value = '/template/admin/vendor/build/js/script-min.js' />"></script>


<%-- 
	<!-- Page level plugins -->
	<script src="<c:url value = '/template/admin/vendor/chart.js/Chart.min.js' />"></script>

	<!-- Page level custom scripts -->
	<script src="<c:url value = '/template/admin/js/demo/chart-area-demo.js' />"></script>
	<script src="<c:url value = '/template/admin/js/demo/chart-pie-demo.js' />"></script> --%>

</body>
</html>