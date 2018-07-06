<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<<<<<<< HEAD
<%@ taglib prefix = "sql" uri = "http://java.sun.com/jsp/jstl/sql" %>
=======
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix = "sql" uri = "http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix = "x" uri = "http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
>>>>>>> 538f6fc28656e3f80e9c05b9b9cd5ecbdc2b6b30


<!DOCTYPE html>

<html>
    
    <head>
        
        <!-- Importation du fichier head.jsp  -->
        <jsp:include page="head.jsp"></jsp:include>
        
    </head>
    
<<<<<<< HEAD
    <body style="font-family: 'Open Sans', sans-serif; height: 100vh; background: url('Images/photo_bg.jpg') 50% fixed; background-size: cover;">
=======
    <body>
>>>>>>> 538f6fc28656e3f80e9c05b9b9cd5ecbdc2b6b30
        
        <!-- Importation du fichier header.jsp  -->
        <jsp:include page="header.jsp"></jsp:include>
        
<<<<<<< HEAD
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
        
=======
        <br> 
        <div id="acceuil" class="col s12 center">
            <div class="row" style="position: relative; width: 50%; margin-left: 25%;">
                <form class="col s12" onsubmit="return recherche();" name="recherche" method="" action="">
                    <div class="row">
                        <div class="input-field col s8">
                            <i class="material-icons prefix">search</i>
                            <input id="recherche" name="recherche" type="text" required="required">
                            <label for="recherche">Rechercher une classe ou une matière</label>
                        </div> 
                        <div class="input-field col s4">
                            <button class="btn btn-large" style="background: #00E676;" id="rechercher" name="rechercher">Rechercher</button>
                        </div> 
                    </div>
                </form>
            </div>
        <%
            if(request.getParameter("rechercher")!=null) {
                String user = request.getParameter("recherche");
                pageContext.setAttribute("user", new String(user));
            }
        
        %>
        <c:out value="${user}" />
        
        <sql:setDataSource var = "lecture" driver = "com.mysql.jdbc.Driver" url = "jdbc:mysql://localhost:3309/db" user = "root"  password = ""/>
        
        <sql:query dataSource = "${lecture}" var = "comptes">
           SELECT * FROM compte ORDER BY username DESC;
        </sql:query>
           <%--
        <c:set var="i" scope="session" value="0" />
        <c:set var="entree" scope="session" value="username" />
           <c:forEach var="compte" begin="0" items="${recherche.rows}">
               <c:if test="${compte.username eq entree}">
                   <c:set var="i" value="${i+i}" />
                   <c:out value="${compte.username }"/>
               </c:if>
           </c:forEach>
        
        <sql:update dataSource = "${insert}" var = "comptes">
         INSERT INTO compte(username, password, statut) VALUES ("test", "test", "Direction");
        </sql:update>

        <sql:query dataSource = "${insert}" var = "comptes">
           SELECT * FROM compte ORDER BY username DESC;
        </sql:query>
           --%>
            <!-- afficher les catégories -->
            <%--
            <ul>
                <c:forEach var="compte" begin="0" items="${comptes.rows}">
                    <li>
                        <c:out value="${compte.username}"/>
                    </li>
                </c:forEach>
            </ul>
            --%>
            <ul class="collapsible" style="position: relative; width: 90%; margin-left: 5%;">
                <c:forEach var="compte" begin="0" items="${comptes.rows}">
                <li>
                    <div class="collapsible-header"><i class="material-icons">work</i><c:out value="${compte.username}"/></div>
                    <div class="collapsible-body">
                        <ul class="collection" style="position: relative; width: 90%; margin-left: 5%;">
                            <li class="collection-item avatar">
                                <ul class="collapsible">
                                    <c:forEach var="compte" begin="0" items="${comptes.rows}">
                                    <li>
                                       <div class="collapsible-header"><i class="material-icons">book</i><c:out value="${compte.username}"/></div>
                                       <div class="collapsible-body">
                                           <ul class="collection">
                                               <li class="collection-item avatar">
                                                    <p>Ajouter un contenu qui montrera le syllabus sous forme de formulaire.</p>
                                                    <br>
                                                    <form class="col s12" name="progression" method="" action="">
                                                        <div class="row">
                                                            <p>
                                                                <label>
                                                                    <input type="checkbox" class="filled-in" disabled="disabled"/>
                                                                    <span>Ajouter les éléments à partir de la base de données</span>
                                                                </label>
                                                            </p>
                                                        </div>
                                                    </form>
                                               </li>
                                           </ul>
                                       </div>
                                    </li>
                                    </c:forEach>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </li>
                </c:forEach>
            </ul>
            <br><br>
        </div>
        
        <!-- Javascript -->
        <!-- Début -->
        <script>
            function recherche() {
               
            }
        </script>
>>>>>>> 538f6fc28656e3f80e9c05b9b9cd5ecbdc2b6b30
        
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