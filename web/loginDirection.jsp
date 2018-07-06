<%-- 
    Document   : loginDirection
    Created on : 31 mai 2018, 17:55:55
    Author     : germinator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<!DOCTYPE html>

<html>
    
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
        <link href="login.css" rel="stylesheet" type="text/css">
    
    </head>
    
    <body style="background-image: url('Images/inp-hb sud 07.jpg')">
    
        <div class="logo">PSEL</div>
        <form class="login-block" onsubmit="return validate();" method="post" id="connexion" name="connexion" action="loginDirection">
            <h1>Login</h1>
            <input type="text" placeholder="Nom d'utilisateur" id="username" name="username" autofocus />
            <input type="password" placeholder="Mot de passe" id="password" name="password" />
            <button type="submit" name="valider">Valider</button>
        </form>
        
        <script>
            
            function validate() {
                
                var link = document.getElementById("connexion");
                
                var user = document.connexion.username.value;
                
                if (user === "") {
                    alert("Veuillez entrer votre nom d'utilisateur");
                    document.connexion.username.focus();
                    return false;
                }
                
                var pwd = document.connexion.password.value;
                var ilegal = /[\W_]/;
                
                if (pwd === "") {
                    alert("Veuillez entrer votre mot de passe");
                    document.connexion.password.focus();
                    return false;
                }
                
                else if (ilegal.test(pwd)) {
                    alert("Votre mot de passe contient des caractères non autorisés");
                    document.connexion.password.focus();
                    return false;
                }
            }
        </script>
        
    </body>
    
</html>