<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">
    <link rel="stylesheet" href="./uploadimage.css">
<title>Naujas vartotojas</title>
</head>
<body>
<jsp:include page="top-menu.jsp"/>
<div style="margin: auto; text-align:center; width:80%;">
<form:form method="POST" modelAttribute="newUser" enctype="multipart/form-data">
			<section>
		<!-- Visos klaidos surenkamos iš žemiau ir rodomos šioje vietoje -->
<form:errors path="*" element="div"/>
			<fieldset>
				<legend>Registracija</legend>



<c:if test="${username == true}">
 <div style="color:red;">Vartotojas tokiu slapyvardziu jau registruotas</div>
</c:if>
				<div>
					<label>Slapyvardis</label>
					<form:input path="username" class="komentaroinput" type="text" required="true" placeholder="Slapyvardis.."/>
					<form:errors path="username" />
				</div>

				<div>
					<label>Slaptažodis</label>
					<form:input  name="password" class="komentaroinput" id="password" path="password" type="password" required="true" placeholder="Slaptažodis.."/>
					<form:errors path="password" />
				</div>
							<div>
					<label>Pakartoti slaptažodi</label>
					<input  name="password_confirm" class="komentaroinput" id="password_confirm" type="password" required placeholder="Pakartoti slaptažodį.." oninput="check(this)"/>
				
				</div>

	

<div class="file-upload" style="text-align:start;">





  <div class="image-upload-wrap">
   
    <form:input class="file-upload-input" type='file' onchange="readURL(this);" accept="image/*" path="userImage" />
    <div class="drag-text">
      <h3>Pasirinkite nuotrauką</h3>
    </div>
  </div>
  <div class="file-upload-content">
    <img class="file-upload-image" src="#" alt="Valtotojo nuotrauka" />
    <div class="image-title-wrap">
      <button type="button" onclick="removeUpload()" class="remove-image">Pašalinti <span class="image-title">Įkelti nuotrauką</span></button>
    </div>
    </div>
    
    
    
    
    
    
    </div>
						<input class="menubutton" type="submit" value="Registruotis" />
				
			</fieldset>
	</section>
		</form:form>
		</div>
</body>
				<script type='text/javascript'>
    function check(input) {
        if (input.value != document.getElementById('password').value) {
            input.setCustomValidity('Nesutampa slaptažodis.');
        } else {
            // input is valid -- reset the error message
            input.setCustomValidity('');
        }
    }
</script>
<style>
.komentaroinput {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;

}

</style>
<script src="./uploadimage.js"></script>
<script class="jsbin" src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
</html>