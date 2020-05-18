<%--
  Created by IntelliJ IDEA.
  User: zlzld
  Date: 2020-03-09
  Time: 오후 9:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    int state = Integer.parseInt(request.getAttribute("state") != null ? String.valueOf(request.getAttribute("state")) : "0");
    request.setAttribute("state", state);
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=1040">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="">
    <title>ID Search</title>
    <jsp:include page="../../../common/style.jsp" flush="false"/>
    <jsp:include page="../../../common/theme.jsp" flush="false"/>
    <jsp:include page="../../../common/font.jsp" flush="false"/>
    <jsp:include page="../../../common/ajaxs.jsp" flush="false"/>
</head>
<body>
<jsp:include page="../common/header.jsp"/>
<form class="form-signin" method="post" onsubmit="return valueCheck();" action="/passwordsearch.do"
      style="width: 564px !important; margin: 100px auto 150px;">
    <div class="text-center" style="margin-bottom: 97px;">
        <img class="mb-4" src="../../../resources/images/logo_symbol.svg" alt="" width="71" height="85">
        <div class="h3 mb-3 font-weight-normal text-black-color profile-name-text">비밀번호 찾기</div>
        <div class="text-black-color profile-sub-text">재미와 학습을 융합한 블록형 코딩 과학실</div>
    </div>
    <div class="container" style="width: 564px !important;">
        <div class="form-label-group mb-4">
            <label for="inputId" class="pb-2 pl-1 form-title-text">아이디</label>
            <input type="text" id="inputId" name="inputId" class="form-control" placeholder="아이디를 입력해주세요."
                   required=""
                   autofocus="">
        </div>
        <div class="form-label-group mb-4">
            <label for="inputEmail" class="pb-2 pl-1 form-title-text">E-Mail</label>
            <input type="email" id="inputEmail" name="inputEmail" class="form-control"
                   placeholder="회원가입시 입력한 이메일 주소를 입력해주세요."
                   required=""
                   autofocus="">
        </div>

        <button class="btn btn-block mt-5 mb-4 auth-submit text-white" type="submit" style="height: 48px;">전송</button>
    </div>
    <div class="pt-4 text-center">
        <ul>
            <a href="/register.do"
               class="text-decoration-none waves-effect waves-light text-black-color button-text pr-2">회원가입</a>

            <a href="/idsearch.do"
               class="text-decoration-none waves-effect waves-light text-black-color button-text center-line ml-2 pr-4 mr-2 pl-4">아이디
                찾기</a>

            <a href="/passwordsearch.do"
               class="text-decoration-none waves-effect waves-light text-black-color button-text pl-2">비밀번호 찾기</a>
        </ul>
    </div>
</form>
<jsp:include page="../common/footer.jsp"/>
<script src="../../../resources/js/inspect.js" type="text/javascript"></script>
<script>

    $(document).ready(function () {
        findPasswordChek();
    });

    function valueCheck() {
        var checkValue1 = inspection('inputId', 'id') ? true : false;
        var checkValue2 = inspection('inputEmail', 'email') ? true : false;
        if (checkValue1 && checkValue2) {
            return true;
        }
        return false;
    }

    function findPasswordChek() {
        var state = ${state};
        switch (state) {
            case 1:
                console.log(1);
                alert("Password Find Success");
                /*TODO Password FIND ACTION*/
                break;
            case 2:
                alert("Password Find Failed");
                /*TODO Password FIND Failed ACTION*/
                break;
            case 3:
                alert("Password Find Error");
                /*TODO Password FIND Error ACTION*/
                break;
        }
    }
</script>
</body>
</html>
