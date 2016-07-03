<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style class="cp-pen-styles"></style></head><body>
<!-- 라이브러리명 : 폰트어썸 -->
<!-- 아이콘 라이브러리 -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">

<!-- 라이브러리명 : 노말라이즈 -->
<!-- 다양한 웹 브라우저 간 레이아웃, 디자인 평준화  -->

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/4.2.0/normalize.min.css">

<!-- 라이브러리명 : jQuery -->
<!-- 필수라이브러리 -->
<!-- 브라우저 마다 다른 자바스크립트 API 문제를 해결 -->
<!-- 브라우저가 기본적으로 제공하는 라이브러리 보다 훨씬 직관적인 API 제공 -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

<!-- 라이브러리명 : 부트스트랩  -->
<!-- UI 프레임워크 -->
<!-- 멋진 디자인을 쉽게 만들 수 있도록 도와준다. -->
<!-- 반응형 디자인 웹을 만들어 준다. -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.6/css/bootstrap.css">

<!-- 부트스트랩 -->
<!-- 부트스트랩은 js 와 css 파일이 한쌍이다. -->
<!-- 부트스트랩 js는 jQuery를 사용한다. 즉 jQuery 보다 밑에서 로드되어야 한다. -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.6/js/bootstrap.min.js"></script>

<h1>할일 리스트</h1>

<input type="text" name="todo">
<button class="btn btn-primary" name="add-btn">할일 추가</button>

<ul class="main-list">
</ul>
     
<script src='//assets.codepen.io/assets/common/stopExecutionOnTimeout.js?t=1'></script>
<script>var $addBtn = $('button[name=add-btn]');
$addBtn.on('click', function () {
    var $todoinput = $('input[name=todo]');
    $todoinput.val($.trim($todoinput.val()));
    if ($todoinput.val() == '') {
        alert('내용을 입력해주세요');
        $todoinput.focus();
        return false;
    }
    $('.main-list').prepend('<li>' + $todoinput.val() + '<button class="btn btn-danger" onclick="deleteBtnClicked(this);">' + '삭제' + '</button>' + '</li>');
    $todoinput.val('');
});
function deleteBtnClicked(btn) {
    $(btn).parent().remove();
}
//# sourceURL=pen.js
</script>
</body></html>