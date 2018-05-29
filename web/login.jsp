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
    
    <body style="background-image: url('Images/inp-hb sud 07.jpg')">
    
        <div class="logo">PSEL</div>
        <form class="login-block" onsubmit="return validate();" method="post" id="connexion" name="connexion" action="loginUtilisateur">
            <h1>Login</h1>
            <select id="statut" name="statut" autofocus>
                <option value="statut" disabled selected>Statut</option>
                <option value="eleve">Elève</option>
                <option value="professeur">Professeur</option>
                <option value="direction">Direction</option>
            </select>
            <input type="text" placeholder="Nom d'utilisateur" id="username" name="username" />
            <input type="password" placeholder="Mot de passe" id="password" name="password" />
            <button type="submit" name="valider">Valider</button>
        </form>
        
        <script>
            
            <%
            
                HttpSession hs = request.getSession();
                String id;
                if (request.getAttribute("id")!=null) {
                    id = (String)request.getAttribute("id");
                    if (id != null) {
                        response.sendRedirect("utilisateurs.jsp");
                    }
                    else {
                        response.sendRedirect("login.jsp");
                    }
                }

            %>
            function validate() {
                
                var link = document.getElementById("connexion");
                
                var user = document.connexion.username.value;
                
                var statut = document.getElementById("statut").value;
                
                if (statut === "statut") {
                    alert("Veuillez sélectionner un statut");
                    document.connexion.statut.focus();
                    return false;
                }
                
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