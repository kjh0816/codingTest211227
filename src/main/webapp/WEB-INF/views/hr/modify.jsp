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

$j(document).ready(function(){

		
	var lunar = ${hrVo.lunar}
		
	if(lunar == 1){
		$j('input[name="lunar"][id="solar"]').prop('checked', true);
	}
	if(lunar == 2){
		$j('input[name="lunar"][id="lunar"]').prop('checked', true);
		
	}
	
	var sex = ${hrVo.sex}
	if(sex == 1){
		$j('input[name="sex"][id="m"]').prop('checked', true);
	}
	if(sex == 2){
		$j('input[name="sex"][id="f"]').prop('checked', true);
		
	}
	
	var married = ${hrVo.marryYear}
	
	if(married == 0){
		$j('input[name="marryYear"][id="notMarried"]').prop('checked', true);
	}
	if(married == 1){
		$j('input[name="marryYear"][id="married"]').prop('checked', true);
	}
	
	var hopeWork = ${hrVo.hopeWork}
	
	if(hopeWork == 0){
		$j('#hopeWork').val('0').prop('selected', true);	
	}
	if(hopeWork == 1){
		$j('#hopeWork').val('1').prop('selected', true);	
	}
	
	var employee = ${hrVo.employee}
	
	if(employee == 0){
		$j('#employee').val('0').prop('selected', true);
	}
	if(employee == 1){
		$j('#employee').val('1').prop('selected', true);
	}
	
});

function modifySubmit(form){
	
	var id = form.id.value;
	var name = form.name.value;
	var engName = form.engName.value;
	var hanName = form.hanName.value;
	var identifyNum = form.identifyNum.value;
	var identifyNum2 = form.identifyNum2.value;
	var photo = form.photo.value;
	var birthYear = form.birthYear.value;
	var birthYear2 = form.birthYear2.value;
	var birthYear3 = form.birthYear3.value;
	var lunar = $j('input[name="lunar"]:checked').val();
	var sex = $j('input[name="sex"]:checked').val();
	var marryYear = $j('input[name="marryYear"]:checked').val();
	var workYear = form.workYear.value;
	var hopeWork = form.hopeWork.value;
	var postNo = form.postNo.value;
	var addr = form.addr.value;
	var phone = form.phone.value;
	var phone2 = form.phone2.value;
	var phone3 = form.phone3.value;
	var email = form.email.value;
	var techLevel = form.techLevel.value;
	var alcohol = form.alcohol.value;
	
	var $frm = $j('.modifySubmit :input');
	var param = $frm.serialize();
	
	
	$j.ajax({
	    url : "/hr/doModify.do",
	    dataType: "json",
	    type: "POST",
	    data : param,
	    success: function(data, textStatus, jqXHR)
	    {
	    	alert('?????????????????????');
	    	window.location.href = "/hr/modify.do?id="+id;
	    }
	});
}
	
	

	
	
</script>

<body>

<div class="row">
	<%@include file="/WEB-INF/views/common/left.jsp"%>

<div class="box_right cell">
	<div class="tit f_bold">
		<img alt="icon" src="/resources/image/icon.gif"> ?????? ?????? ?????? ??????
	</div>
	<div class="page_menu f_bold">
		<ul class="li_left">
			<li><a href="#">????????????</a></li>
			<li>|</li>
			<li><a href="#">?????????. ??????????????????</a></li>
			<li>|</li>
			<li><a href="#">???????????? ??????</a></li>
			<li>|</li>
			<li><a href="#">????????????</a></li>
			<li>|</li>
			<li><a href="#">????????????</a></li>
		</ul>
	</div>
	<form onsubmit="modifySubmit(this); return false;" class="modifySubmit" method="POST">
	<div class="page_box">
		<div class="page_in float_h">
			<div class="picture_pr float_l"><img alt="????????????" src=""></div>
			<div class="page_mar2 float_l">
				<input type="hidden" name="id" value="${param.id}">
				<div class="page_mar1">
					<label class="page4_1">???????????? : </label>
					<input type="text" name="name" value="${hrVo.name}">
				</div>
				<div class="page_mar1">
					<label class="page4_1">???????????? : </label>
					<input type="text" name="engName" value="${hrVo.engName}">
				</div>
				<div class="page_mar1">
					<label class="page4_1">????????????: </label>
					<input type="text" name="hanName" value="${hrVo.hanName}">
				</div>
				<div class="page_mar1">
					<label class="page4_1">?????????????????? : </label>
					<input name="identifyNum" type="text" size="6" maxlength="6" value="${hrVo.identifyNum}"> - <input name="identifyNum2" type="text" size="7" maxlength="7" value="${hrVo.identifyNum2}">
				</div>
			</div>
		</div>
		<div class="page_in clear_b">
			<div class="page_line page_mar1">
				<label class="page4_1">??????????????? : </label>
				<input name="photo" type="text" size="40" value="${hrVo.photo}"> <font color="#FF0000"><img src="/resources/image/bt_search.gif" width="49" height="18"></font>
			</div>
			
			<div class="page_line page_mar1">
				<label class="page4_1">???????????? : </label>
				<input name="birthYear" type="text" size="8" value="${hrVo.birthYear}"> ??? <input name="birthYear2" type="text" size="5" value="${hrVo.birthYear2}"> ??? <input name="birthYear3" type="text" size="5"  value="${hrVo.birthYear3}"> ??? ( <input type="radio" name="lunar" value="1" id="solar"> ?????? <input id="lunar" type="radio" name="lunar" value="2"> ?????? )
			</div>
			<div class="page_line page_mar1">
				<label class="page4_1">?????? : </label>
				<input type="radio" name="sex" id="m" value="1"> ?????? <input type="radio" name="sex" value="2" id="f"> ??????
			</div>
			
			<div class="page_line page_mar1">
				<label class="page4_1">???????????? : </label>
				<input type="radio" name="marryYear" value="0" id="notMarried"> ?????? <input type="radio" name="marryYear" value="1" id="married"> ??????
			</div>
			
			<div class="page_line page_mar1">
				<label class="page4_1">?????? : </label>
				<input name="workYear" type="text" size="10" value="${hrVo.workYear}">
			</div>
			<div class="page_line page_mar1">
				<label class="page4_1">?????? ???????????? : </label>
				<select name="select">
					<option>??????</option>
				</select>
			</div>
			<div class="page_line page_mar1">
				<label class="page4_1">???????????? : </label>
				<select name="hopeWork" id="hopeWork">
					<option value="0">SI</option>
					<option value="1">SM</option>
				</select>
			</div>
			<div class="page_line page_mar1">
				<label class="page4_1">???????????? : </label>
				<select name="employee" id="employee">
					<option value="0">?????????</option>
					<option value="1">?????????</option>
				</select>
			</div>
			<div class="page_line page_mar1">
				<label class="page4_1">?????? : </label>
				<input name="postNo" type="text" size="10" value="${hrVo.postNo}"> <input name="addr" type="text" size="40" value="${hrVo.addr}">
			</div>
			<div class="page_line page_mar1">
				<label class="page4_1">????????? : </label>
				<input name="phone" type="text" size="10" value="${hrVo.phone}"> - <input name="phone2" type="text" size="10" value="${hrVo.phone2}"> - <input name="phone3" type="text" size="10" value="${hrVo.phone3}">
			</div>
			<div class="page_line page_mar1">
				<label class="page4_1">????????? : </label>
				<input name="email" type="text" size="20" value="${hrVo.email}">
			</div>
			<div class="page_line page_mar1">
				<label class="page4_1">???????????? : </label>
				<input name="techLevel" type="text" size="20" value="${hrVo.techLevel}">
			</div>
			<div class="page_mar1">
				<label class="page4_1">?????? : </label>
				<input name="alcohol" type="text" size="20" value="${hrVo.alcohol}">
			</div>
		</div>
		<div class="btn_all">
			<button><img alt="remove" src="/resources/image/bt_remove.gif"></button>
			<button type="reset"><img alt="cancel" src="/resources/image/bt_cancel.gif"></button>
		</div>
	</div>
	</form>
</div>
</div>
</body>
</html>