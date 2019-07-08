<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags/client"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />
<c:set var="path"
	value="${pageContext.request.contextPath }/resources/client"></c:set>
<link rel="shortcut icon" href="${path}/images/favicon.png" />
<link rel="stylesheet" type="text/css" href="${path}/css/bootstrap.css" />
<link href="${path}/css/style.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${path}/vendor/owl-slider.css" />
<link rel="stylesheet" type="text/css"
	href="${path}/vendor/settings.css" />
<link rel="stylesheet" type="text/css" href="${path}/vendor/animate.css" />
<title>Vendor</title>

</head>
<body>
	
	
	
	<tiles:insertAttribute name="content"></tiles:insertAttribute>
	
	<mt:footer></mt:footer>

</body>

<script type="text/javascript" src="${path}/js/jquery-1.11.1.min.js"
	tppabs="http://landing.engocreative.com/html/dama/demo/assets/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="${path}/js/bootstrap.min.js"
	tppabs="http://landing.engocreative.com/html/dama/demo/assets/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${path}/js/owl.carousel.min.js"
	tppabs="http://landing.engocreative.com/html/dama/demo/assets/js/owl.carousel.min.js"></script>
<script type="text/javascript"
	src="${path}/js/jquery.themepunch.revolution.min.js"
	tppabs="http://landing.engocreative.com/html/dama/demo/assets/js/jquery.themepunch.revolution.min.js"></script>
<script type="text/javascript"
	src="${path}/js/jquery.themepunch.plugins.min.js"
	tppabs="http://landing.engocreative.com/html/dama/demo/assets/js/jquery.themepunch.plugins.min.js"></script>
<script type="text/javascript" src="${path}/js/engo-plugins.js"
	tppabs="http://landing.engocreative.com/html/dama/demo/assets/js/engo-plugins.js"></script>
<script type="text/javascript" src="${path}/js/wow.min.js"
	tppabs="http://landing.engocreative.com/html/dama/demo/assets/js/wow.min.js"></script>
<script type="text/javascript" src="${path}/js/store.js"
	tppabs="http://landing.engocreative.com/html/dama/demo/assets/js/store.js"></script>
<script type="text/javascript" src="${path}/lib/auth.js"></script>
</html>