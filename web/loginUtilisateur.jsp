<%-- 
    Document   : loginUtilisateur
    Created on : 25 mai 2018, 13:19:34
    Author     : germinator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
        <link href="login.css" rel="stylesheet" type="text/css">
    
    </head>
    
    <body>
    
        <div class="logo">PSEL</div>
        <form class="login-block" name="connexion" action="">
            <h1>Login</h1>
            <input type="text" placeholder="Nom d'utilisateur" id="username" name="username" />
            <input type="password" placeholder="Mot de passe" id="password" name="password" />
            <button>Valider</button>
        </form>
        <%--
        <script>
            function validate() {
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
        --%>
        
    </body>
    
</html>