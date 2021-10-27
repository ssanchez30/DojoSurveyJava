<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detail Page</title>
<link rel="stylesheet" href="./css/style.css" />
</head>
<body>

 <section class="section2">
        <div class="container">
            <input type="hidden" id="idForm" name="idForm" value=2>

            <h1 class="detalleh1"><c:out value="${infoUser['name']}"></c:out></h1>
            <p>Género: <c:out value="${infoUser['genero']}"></c:out></p>
            <p>Dojo Location: <c:out value="${infoUser['location']}"></c:out> </p>
            <p>Favorite Language: <c:out value="${infoUser['fLanguage']}"></c:out></p>

			<p>Hobbies:</p>
            <ul>
             <c:forEach var="hobby" items="${hobbies }">
             
            
              <li><c:out value="${hobby}"></c:out></li>
               
             </c:forEach>
            
               
              
            </ul>
          

            <p>Comments: <c:out value="${infoUser['comments']}"></c:out></p>

            <div class="btnHomeDiv">
                <a href="/dojo" class="btnHome">Home</a>
            </div>
        </div>
    </section>

<script src="./js/script.js" ></script>
</body>
</html>