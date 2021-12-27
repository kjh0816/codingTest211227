<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common/common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
	<meta charset="UTF-8">
	<link href="/resources/css/reset.min.css" rel="stylesheet" type="text/css">
	<link href="/resources/css/style.css" rel="stylesheet" type="text/css">
	<title>Untitled Document</title>
</head>
<body>
<div class="box_left cell">
	<div class="left_top"></div>
	<div class="left_cont">
		<ul class="left_menu">
			<li><img alt="icon" src="/resources/image/left_icon.gif"> 기본정보
				<ul>
					<li>- 등록</li>
				</ul>
			</li>
			<li><img alt="icon" src="/resources/image/left_icon.gif"> 직원명부</li>
			<li><img alt="icon" src="/resources/image/left_icon.gif"> 퇴직자현황</li>
			<li><img alt="icon" src="/resources/image/left_icon.gif"> 예비인력정보</li>
			<li><img alt="icon" src="/resources/image/left_icon.gif"> 거래처정보
				<ul>
					<li>- 등록</li>
				</ul>
			</li>
		</ul>
	</div>
	<div class="left_bottom"></div>
	<div class="left_search">
		<label class="left_label"><img alt="icon" src="/resources/image/left_icon.gif"> 경력검색</label>
		<br>
		<input class="left_flat" name="textfield" type="text" size="9" maxlength="14"> 
		<a href="#"><img alt="search" src="/resources/image/search.gif"></a>
	</div>
</div>
</body>
</html>
