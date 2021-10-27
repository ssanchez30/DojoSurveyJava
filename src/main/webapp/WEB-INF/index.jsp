<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index Page</title>
<link rel="stylesheet" href="./css/style.css" />

</head>
<body>

<section>
        <div class="container">
            <h1>Dojo Survey</h1>
            <form action="/result" method="POST">
                <input type="hidden" id="idForm" name="idForm" value=1>
                <label for="fName" class="">Your Name:</label>
                <input type="text" id="fName" name="fName" autocomplete="off" class="">
                <div class="generoMF">
                    <input type="radio" id="masculino" name="genero" value="Masculino" checked>
                    <Label for="masculino">Masculino</Label>
                    <input type="radio" id="femenino" name="genero" value="Femenino">
                    <Label for="femenino">Femenino</Label>
                </div>
                <label for="location" class="">Dojo Location:</label>
                <select name="location" id="location" class="">
                    <option value="select">--Select a Location--</option>
                    <option value="San José">San José</option>
                    <option value="Cartago">Cartago</option>
                    <option value="Limón">Limón</option>
                    <option value="Puntarenas">Puntarenas</option>
                    <option value="Guanacaste">Guanacaste</option>
                    <option value="Heredia">Heredia</option>
                    <option value="Alajuela">Alajuela</option>
                </select>
                <label for="fLanguage" class="">Favorite Language:</label>
                <select name="fLanguage" id="fLanguage" class="">
                    <option value="select">--Select a Language--</option>
                    <option value="HTML">HTML</option>
                    <option value="CSS">CSS</option>
                    <option value="JavaScript">JavaScript</option>
                    <option value="Python">Python</option>
                     <option value="Java">Java</option>
                    <option value="C Sharp C#">C Sharp C#</option>
                </select>
                <label for="hobbies">Hobbies:</label>
                <div class="hobbies">
                    <input type="checkbox" id="instrument" name="hobbies" value="Play a instrument">
                    <label for="instrument">Play a instrument</label>
                    <input type="checkbox" id="videoGames" name="hobbies" value="Play video games">
                    <label for="videoGames">Play video games</label>
                    <input type="checkbox" id="sport" name="hobbies" value="Play a sport">
                    <label for="sport">Play a sport</label>
                </div>
                <label for="comments" class="">Comments:</label>
                <textarea name="comments" id="comments" cols="30" rows="10" class=""></textarea>
                <div class="btnSubmitDiv">
                    <button class="btnSubmit" type="submit">Submit</button>
                </div>
            </form>

        </div>
    </section>

<script src="./js/script.js" ></script>
</body>
</html>