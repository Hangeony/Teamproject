<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="header">
    <header class="header-container white">
        <div class="header-inner">
            <nav class="header-nav">
                <!-- logo -->
                <div class="logo logo-container">
                    <a href="#">
                        <img class="logo-img" src="https://media.vlpt.us/images/jian/post/a5aa6b15-69a1-4ec2-ac59-db10e1c5eafc/faketrip.png" alt="logo">
                    </a>
                </div>
                <!-- logo -->
                <!-- search -->
                <div class="search-bar">
                    <div class="search-input">
                        <form action="${root }/search/" class="search-container">
                            <i class="fas fa-search"></i>
                            <input name="keyword" type="search" placeholder="나라 혹은 도시를 검색해보세요" spellcheck="false" autocomplete="off">
                        </form>
                    </div>
                </div>
                <!-- search -->
                <!-- menu -->
                <div class="header-menu white">
                    <div class="header-menu-item">
                        <a class="d-line-block" href="#" data-turbolinks="false">마이페이지</a>
                    </div>
                    <div class="header-menu-item">
                        <a class="d-line-block" href="#" data-turbolinks="false">회원가입</a>
                    </div>
                    <div class="header-menu-item">
                        <a class="d-line-block link-btn" href="#">로그인</a>
                    </div>
                </div>
                <!-- menu -->
            </nav>
        </div>
        <!-- header footer navigation link -->
        <div class="header-navigation">
            <nav class="header-navigation-container">
                <div class="header-navigation-wrapper navigation-inner">
                    <div class="navigation-item">
                        <a href="${root }/resources/view/ari-line.jsp">
                            <img src="https://d2ur7st6jjikze.cloudfront.net/cms_icons/49_original_1608700445.png?1608700445" alt="ic_flight_40x40">
                            <span>항공권</span>
                        </a>
                    </div>
                    <div class="navigation-item">
                        <a href="${root }/resources/view/hotel.jsp">
                            <img src="https://d2ur7st6jjikze.cloudfront.net/cms_icons/50_original_1608701561.png?1608701561" alt="ic_bnb_40x40">
                            <span>숙소</span>
                        </a>
                    </div>
                    <div class="navigation-item">
                        <a href="${root }/write/write">
                            <img src="https://d2ur7st6jjikze.cloudfront.net/cms_icons/18_original_1592284955.png?1592284955" alt="ic_tour_sm">
                            <span>이벤트</span>
                        </a>
                    </div>
                    <div class="divider"></div>
                    <div class="navigation-item">
                        <a href="#">
                            <span>후기 게시판</span>
                        </a>
                    </div>
                    <div class="navigation-item">
                        <a href="#">
                            <span>QnA 게시판</span>
                        </a>
                    </div>
                </div>
            </nav>
        </div>
        <!-- header footer navigation link -->
    </header>
</div>