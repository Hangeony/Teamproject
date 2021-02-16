<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<link rel="stylesheet" href="${root }/resources/assets/css/reset.css">
<link rel="stylesheet" href="${root }/resources/assets/css/style.css">
<link rel="stylesheet" href="${root }/resources/assets/css/common.css">
<link rel="stylesheet" href="${root }/resources/assets/css/my-info.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
a {
    text-decoration: none !important; 
  }
</style>
<title>정보수정</title>
</head>
<body>
<u:navbar/>
 <!--main-->
    <main class="traveler">
        <div class="traveler-container clearfix">
            <div class="sidebar-heading">프로필 관리</div>
            <div class="traveler-sidebar">
                <div class="sidebar-wrapper">
                    <div class="profile-container box">
                        <div class="profile">
                            <img class="img-circle"
                                src="//d2yoing0loi5gh.cloudfront.net/assets/default/user_profile_image-414acc60b27f0a258bec14c82b70dc361fc6768da9289f924f887bec1fc33849.png"
                                alt=" 여행자 사진" width="80">
                        </div>
                        <div class="username">유저 닉네임</div>
                        <div class="text-md setting hide-on-mobile">
                            <img src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/traveler/reservation/ic_setting@2x-832c08d9d38f208502f94e8d35e78a320024fc5f61630f2eba7801845e1eda78.png"
                                alt="프로필관리" class="icon item-inline" height="11px;">
                            <a href="#" style="color :#343A40">프로필관리</a>
                        </div>
                    </div>
                    <div class="promotion-container box clearfix">
                        <div class="item">
                            <div class="item-header text-md">내쿠폰</div>
                            <div class="item-count text-md">
                                <a href="#" >
                                    0장
                                    <img src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/setting/ic-arrow-right-xs@2x-b290f6804f2f002ced664adc4c5e63a59629269d2e6657184239261195f22147.png"
                                        alt="arrow" class="arrow" width="16px">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="traveler-body">
                <main class="member-box box mode-readonly clearfix" id="member">
                    <div class="member-container width-edit-btn">
                        <a class="btn-new btn--type-outline btn--size-xs btn-modify" href="#"
                            id="account-modify">편집</a>
                        <div class="content-wrapper">
                            <div class="profile-img-container hide-on-tablet">
                                <img src="//d2yoing0loi5gh.cloudfront.net/assets/default/user_profile_image-414acc60b27f0a258bec14c82b70dc361fc6768da9289f924f887bec1fc33849.png" alt="User profile image" class="img profile-img" width="98px;">
                                <div class="text">유저 닉네임</div>
                            </div>
                            <div class="member-wrapper">
                                <form action="#" class="fv-form fv-form-bootstrap" data-validation="true" accept-charset="UTF-8" method="POST" novalidate="novalidate">
                                    <button class="fv-hidden-submit" style="display: none; width: 0px; height: 0px;"></button>
                                    <input type="hidden" name="utf-8" value="">
                                    <input type="hidden" name="_method" value="put">
                                    <input type="hidden" name="authenticity_token" value="pTcdCOFFm5jRK2NGrJdaE8huDIWt4uGAnB9Iz0XOje17KrugLic/gMeAtovye6yysuniwlVQNzWVlILefO2Apw==">
                                    <div class="form-group form-input-group">
                                        <div class="title text-middle">닉네임</div>
                                    <div class="input-wrapper text-middle">
                                        <div class="row">
                                            <div class="col-xs-12">
                                                <input type="text" class="form-control text-content" value="유저 닉네임" readonly name="account-input" id="nickname">
                                            </div>
                                        </div>
                                    </div>
                                    </div>
                                    <div class="form-group form-input-group">
                                        <div class="title text-middle">비밀번호</div>
                                    <div class="input-wrapper text-middle">
                                        <div class="row">
                                            <div class="col-xs-12">
                                                <input type="text" class="form-control text-content" value="***********" readonly name="account-input" id="password">
                                            </div>
                                        </div>
                                    </div>
                                    </div>
                                    <div class="form-btn-wrap d-none" id="button-group">
                                        <div class="form-btn-container clearfix">
                                            <div class="btn--width-50">
                                                <button class="btn-new btn--type-gray btn--width-100 btn--size-sm" onclick="javascript:location.reload();return false;" style="border:0px">취소하기</button>
                                            </div>
                                            <div class="btn--width-50">
                                                <button class="btn-new btn--type-primary btn--width-100 btn--size-sm" id="account-submit" name="account-edit" type="submit" style="border:0px">저장하기</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </main>
                <div class="account-remove" id="remove">
                    <div class="text-clickable-container" data-popup-window>
                        <div class="text text-sm">계정 탈퇴하기</div>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <div id="myModal" class="modal" tabindex="-1">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" style="font-size: 20px;">회원 탈퇴진행</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <p style="font-size: 15px;">회원탈퇴 진행하시겠습니까 ?</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" style="font-size: 12px;">삭제하기</button>
              <button type="button" class="btn btn-secondary" data-dismiss="modal"style="font-size: 12px;">취소</button>
            </div>
          </div>
        </div>
      </div>

<script>

    var isModify = false;
    var $accountModify = $('#account-modify');
    var $accountInput = $('[name=account-input]');
    var $buttonGroup = $('#button-group');
    var $remove = $('#remove');

    $accountModify.off().on('click', function (event) {
        if (isModify) {
            // 수정취소.
            isModify = false;
            $accountInput.attr('readonly', 'readonly');
            $buttonGroup.addClass('d-none')
        } else {
            //인풋 수정
            isModify = true;
            $accountInput.removeAttr('readonly');
            $buttonGroup.removeClass('d-none');
        }
        console.log(isModify)
    })

    $remove.off().on('click', function (event) {
        $('#myModal').modal('show')
    })
 
</script>
<u:footer/>
</body>
</html>