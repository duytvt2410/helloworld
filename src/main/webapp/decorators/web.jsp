<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Devita - eCommerce HTML5 Template</title>
<meta name="description" content="">
<meta name="robots" content="noindex, follow" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="<c:url value = '/template/web/assets/img/favicon.png'/>">

<!-- all css here -->
<link rel="stylesheet"
	href="<c:url value = '/template/web/assets/css/bootstrap.min.css'/>">
<link rel="stylesheet"
	href="<c:url value = '/template/web/assets/css/icons.css'/>">
<link rel="stylesheet"
	href="<c:url value = '/template/web/assets/css/plugins.css'/>">
<link rel="stylesheet"
	href="<c:url value = '/template/web/assets/css/mycss.css'/>">
<link rel="stylesheet"
	href="<c:url value = '/template/web/assets/css/responsive.css'/>">

<link rel="stylesheet"
	href="<c:url value = '/template/web/assets/pe-icon-7-stroke/css/pe-icon-7-stroke.css'/>">

<!-- Optional - Adds useful class to manipulate icon font display -->
<link rel="stylesheet"
	href="<c:url value = '/template/web/assets/pe-icon-7-stroke/css/helper.css'/>">

<link rel="stylesheet" type="text/css"
	href="<c:url value = '/template/web/assets/fontawesome/css/all.css'/>">

<script
	src="<c:url value = '/template/web/assets/js/vendor/modernizr-2.8.3.min.js'/>"></script>
<script
	src="<c:url value = '/template/web/assets/js/vendor/jquery-1.12.0.min.js'/>"></script>
</head>
<body>
	<!-- header -->
	<%@ include file="/common/web/header.jsp"%>

	<dec:body />

	<!-- footer -->
	<%@ include file="/common/web/footer.jsp"%>
	<!-- all js here -->
	<script src="<c:url value = '/template/web/assets/js/popper.js'/>"></script>
	<script
		src="<c:url value = '/template/web/assets/js/bootstrap.min.js'/>"></script>
	<script src="<c:url value = '/template/web/assets/js/ajax-mail.js'/>"></script>
	<script src="<c:url value = '/template/web/assets/js/plugins.js'/>"></script>
	<script src="<c:url value = '/template/web/assets/js/myjs.js'/>"></script>
	<script
		src="<c:url value = '/template/web/assets/js/vendor/jquery.zoom.js'/>"></script>
</body>
</html>