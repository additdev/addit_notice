<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ include file="jsp/layout/header.jsp"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>애드아이티</title>
    
    <!-- css -->
    <link rel="stylesheet" href="/resource/css/reset.css">
    <link rel="stylesheet" href="/resource/css/style.css">


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
    <div class="wrap">
        <div class="add-section-wrap">
            <div class="logo-area">
                <div class="peartech-logo">
                    <img src="resource/img/image.png" alt="">
                </div>
                <div class="page-name">애드아이티</div>
                <span>COPYRIGHT 2021 PPEERTEC</span>
            </div>
            
            <div class="login-form">
                <div class="login-type">Admin Login</div>
                <div class="id-form">
                    <img src="resource/img/user-alt-solid.png" alt=""><input type="text" placeholder="아이디를 입력해 주세요." maxlength="25" class="member_id"  onkeyup="noSpaceForm(this);" onchange="noSpaceForm(this);" ></div>

                <div class="ps-form">
                    <img src="resource/img/lock-solid.png" alt=""><input type="password" placeholder="비밀번호를 입력해 주세요." maxlength="40" class="member_pw"  onkeyup="noSpaceForm(this);" onchange="noSpaceForm(this);" ></div>
                <div class="save-id"><label><input type="checkbox" checked>아이디 저장</label></div>
                <div class="error-area">
                    <span class="error-text">정보가 일치하지 않습니다.</span>
                </div>
                <div class="button-div"><button class="login-insert login-button-div" id="join" onclick="check()" disabled>로그인</button></div>
            </div>
        </div>
    </div>
    
</body>

<script>

    //disabled
    const member_id = document.querySelector('.member_id');
    const member_pw = document.querySelector('.member_pw');
    const loginButton = document.querySelector('#join');

    member_id.addEventListener('keyup', disabled);
    member_pw.addEventListener('keyup', disabled);

    function disabled() {
        switch (!(member_id.value && member_pw.value)) {
            case true: loginButton.disabled = true; break;
            case false: loginButton.disabled = false; break;
        }
    }

    // 로그인+ 비밀번호 스페이스 바 방지 
    function noSpaceForm(obj) {
    var str_space = /\s/;  
    if(str_space.exec(obj.value)) { 
        obj.focus();
        obj.value = obj.value.replace(' ','');
        return false;
    }
}

    //Validation Check
    function check(){
	
    	alert('미완성');
        //location.href="PTTA_W002.html"
        
        //let member_id = $('.member_id').val();
        //let member_pw = $('.member_pw').val();

        //if (member_id == "") {
            //alert('아이디를 입력해주세요');
            //return;
        //}

        //if ( member_pw == "") {
            //alert('비밀번호를 입력해주세요');
            //return;
        //}
    }

</script>
</html>