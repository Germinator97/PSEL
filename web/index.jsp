<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "sql" uri = "http://java.sun.com/jsp/jstl/sql" %>


<!DOCTYPE html>

<html>
    
    <head>
        
        <!-- Importation du fichier head.jsp  -->
        <jsp:include page="head.jsp"></jsp:include>
        
    </head>
    
    <body style="font-family: 'Open Sans', sans-serif; height: 100vh; background: url('Images/photo_bg.jpg') 50% fixed; background-size: cover;">
        
        <!-- Importation du fichier header.jsp  -->
        <jsp:include page="header.jsp"></jsp:include>
        
        <marquee direction='left'><p style="font-family: verdana; font-size: 1.5em; color: white;">Bienvenue à l'appilcation PSEL. Vous trouverez ici tous ce dont vous aurez besoin pour faciliter le suivi des enseignements de votre établissement.</p></marquee>
        
        <div class="jumbotron" style="padding: 0.01rem 5rem; margin-bottom: 1rem; background-color: #e9ecef;">
    <h1>PSEL</h1>
    <p>Bienvenue sur PSEL la Plateforme de Suivi des Enseignements en Ligne.</p>
</div>

        <div class="row" style="position: relative; width: 95%; margin-left: 2.5%; text-align: center; font-family: Verdana; color: black; background-color: whitesmoke;">
          
                <div class="card-stacked col s4">
                    
                    <h4>Enregistrements</h4>
                    
                    <hr>
                    <p>Cette section présente l'enregistrement des utilisateurs, des classes, des matières ainsi que les 
                        différents syllabus affectés aux matières.</p>
                </div>
                <div class="col s4" >
                    <h4>Progressions</h4>
                    <hr>
                    <p>PSEL vous présente dans cette partie 03 niveaux d'utilisation de l'application:</p>
                    <li>Chef : Enregistrement de chaque matière éffectuée la progression comme s'il renseignait un cahier de texte.</li>
                    <li>Professeur : Validation de la progression enregitrée au préalable par un chef de classe.</li>
                    <li>Direction : Visualisation de toutes les différentes progressions enregistrées.</li>
                    <br>
                </div>
                
                <div class="card-stacked col s4">
                    <h4>Utilisateurs</h4>
                    <hr>
                    <p>Cette section affiche les informations sur l'utilisateur connecté, celles sur son compte de 
                        connexion mais également sur ses informations personnelles. Elle montre également les informations 
                        sur les différents autres utilisateurs.</p>
                </div>
        </div>
        
        
        <script>
            M.AutoInit();
        </script>
        <!-- Fin -->
        
        <!-- Importation du fichier footer.jsp  -->
        <jsp:include page="footer.jsp"></jsp:include>
        
        <!-- Importation du fichier body.jsp  -->
        <jsp:include page="body.jsp"></jsp:include>
      
    </body>
    
</html>