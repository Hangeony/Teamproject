<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
a {
    text-decoration: none !important; 
  }
</style>
<title>정보수정</title>
</head>
<body>
<ul>
<c:forEach items="${list }" var = "cartegories" >
<il><img class="filter-icon" src="${cartegories.photourl }"  alt="아이콘"  /> ${cartegories.name }  </il>
</c:forEach>
</ul>

</body>
</html>