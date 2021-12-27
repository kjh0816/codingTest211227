<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common/common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<link href="/resources/css/reset.min.css" rel="stylesheet" type="text/css">
	<link href="/resources/css/style.css" rel="stylesheet" type="text/css">
	<title>Untitled Document</title>
</head>
<script type="text/javascript">

function modify(){
	
	var cntCheck = $j('input[id="checkbox"]:checked').length;
	
	if(cntCheck > 1){
		alert('수정할 대상을 하나만 선택해주세요.');
		return false;
	}
	
	if(cntCheck == 0){
		alert('수정할 대상을 선택해주세요.');
		return false;
	}
	
	var checkboxVal = $j('input[id="checkbox"]:checked').val();
	
	
	window.location.href = "/hr/modify.do?id=" + checkboxVal
}

</script>
<body>
<div class="box_right">
	<div class="tit f_bold">
		<img alt="icon" src="/resources/image/icon.gif"> 사원조회
	</div>
	<div class="float_r main_search">
		<select name="select">
			<option selected>::::: 전체 :::::</option>
		</select> 
		<input name="textfield" type="text" class="input"> <a href="#"><img alt="search" src="/resources/image/search.gif"></a>
	</div>
	<div class="main_box clear_b">
		<div class="main_tab main_top">
			<img alt="all_icon" src="/resources/image/all_icon.gif"> <a onclick="modify(); return false;">수정</a> 
			<img alt="all_icon" src="/resources/image/all_icon.gif"> <a href="#">인사기록카드</a> 
			<img alt="all_icon" src="/resources/image/all_icon.gif"> <a href="#">경력정보</a> 
			<img alt="all_icon" src="/resources/image/all_icon.gif"> <a href="#">근무정보</a>
		</div>
		<!-------------------------  리스트 ------------------------------>
		<table>
			<tr>
				<th width="35px"></th>
				<th width="85px">이름</th>
				<th width="153px">주민번호</th>
				<th width="91px">성별</th>
				<th width="91px">기술등급</th>
				<th width="91px">입사유형</th>
				<th width="94px">근무여부</th>
			</tr>
			<tr><td colspan="7" class="main_bar"></td></tr>
			<c:forEach var="hr" items="${hrList}" begin="0" end="9" step="1"
						varStatus="status">
					<tr>
						<td><input type="checkbox" name="checkbox" id="checkbox" value="${hr.id}"></td>
						<td>${hr.name}</td>
						<td>${hr.identifyNum}</td>
						<c:if test="${hr.sex eq '1'}">
						<td>남</td>
						</c:if>
						<c:if test="${hr.sex eq '2'}">
						<td>여</td>
						</c:if>
						<td>${hr.techLevel}</td>
						<c:if test="${hr.employee eq '0'}">
						<td>정규직</td>
						</c:if>
						<c:if test="${hr.employee eq '1'}">
						<td>계약직</td>
						</c:if>
						<td>근무</td>
					</tr>
					<tr><td colspan="7" class="main_bar"></td></tr>
			</c:forEach>
		</table>
		<div class="main_paging">
			<a href="#"><img alt="prev_more" src="/resources/image/prev.gif"></a>
			<a href="#"><img alt="prev" src="/resources/image/pre.gif"></a>
			&nbsp; 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 &nbsp;
			<a href="#"><img alt="next" src="/resources/image/next.gif"></a>
			<a href="#"><img alt="next_more" src="/resources/image/next_.gif"></a>
		</div>
		<!-------------------------  리스트 ------------------------------>
		<div class="main_tab main_bottom">
			<img alt="all_icon" src="/resources/image/all_icon.gif"> <a href="#">수정</a> 
			<img alt="all_icon" src="/resources/image/all_icon.gif"> <a href="#">인사기록카드</a> 
			<img alt="all_icon" src="/resources/image/all_icon.gif"> <a href="#">경력정보</a> 
			<img alt="all_icon" src="/resources/image/all_icon.gif"> <a href="#">근무정보</a>
		</div>
	</div>
</div>
</body>
</html>
