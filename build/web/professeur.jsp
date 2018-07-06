<%-- 
    Document   : professeur
    Created on : 24 mai 2018, 21:38:26
    Author     : germinator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<<<<<<< HEAD
<%@ taglib prefix = "sql" uri = "http://java.sun.com/jsp/jstl/sql" %>
<%@page session="true" %>

<%
    HttpSession sesion = request.getSession();
    if (sesion.getAttribute("id")== null) {
        response.sendRedirect("../loginProfesseur.jsp");
    }
    else {
        String id = sesion.getAttribute("id").toString();
        if (id.equals(null)) {
            response.sendRedirect("../loginProfesseur.jsp");
        }
    }
%>
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
        
        <br>
        <div id="professeurs" class="col s12 center">
<<<<<<< HEAD
            <p style="text-align: center; font-family: Verdana; font-size: 1.5em; color: white;">Votre tableau de bord vous permet en tant que professeur d'apporter votre accord sur une progression enregistrée par le chef de classe. Sélectionner une classe puis une matière.</p>
            
            <sql:setDataSource var = "lecture" driver = "com.mysql.jdbc.Driver" url = "jdbc:mysql://localhost:3306/psel" user = "root"  password = ""/>
        
            <%
                int id = 0;
                if (sesion.getAttribute("id")== null) {
                    id = (Integer)request.getAttribute("id");
                    pageContext.setAttribute("id", id);
                }
        %>
        <sql:query dataSource = "${lecture}" var = "classes">
            SELECT * FROM classe WHERE
            classe.id=(SELECT matiere.salle FROM matiere WHERE
                matiere.prof=(SELECT professeur.id FROM professeur WHERE
                    professeur.compte=${id}));
        </sql:query>
        <sql:query dataSource = "${lecture}" var = "professeurs">
                            SELECT professeur.id FROM professeur WHERE professeur.compte=${id};
                        </sql:query>
                    <c:forEach var="classe" begin="0" items="${classes.rows}">
                        <sql:query dataSource = "${lecture}" var = "chefs">
                            SELECT * FROM chef WHERE chef.matricule='${classe.chef}';
                        </sql:query>
                        <c:forEach var="chef" begin="0" items="${chefs.rows}">
        <ul class="collapsible" style="position: relative; width: 90%; margin-left: 5%;">
                
                <li>
                    <div class="collapsible-header"><i class="material-icons">work</i>
                        <c:out value="${classe.nom}"/>
                        -
                        <c:out value="${chef.nom}"/>
                        <c:out value="${chef.prenom}"/>
                        <c:out value="${chef.telephone}"/>
                        <c:out value="${chef.email}"/>
                    </div>
                    <div class="collapsible-body">
                        
                        
                        <ul class="collapsible" style="position: relative; width: 90%; margin-left: 5%;">
                            <c:forEach var="professeur" begin="0" items="${professeurs.rows}">
                            <sql:query dataSource = "${lecture}" var = "matieres">
                                SELECT * FROM matiere WHERE matiere.salle=${classe.id} AND matiere.prof=${professeur.id};
                            </sql:query>
                            <c:forEach var="matiere" begin="0" items="${matieres.rows}">
                            <li>
                                <div class="collapsible-header">
                                    <i class="material-icons">book</i>
                                    <c:out value="${matiere.code}"/>
                                    <c:out value="${matiere.nom}"/>
                                </div>
                                <sql:query dataSource = "${lecture}" var = "syllabus">
                                    SELECT * FROM syllabus WHERE syllabus.matiere='${matiere.code}';
                                </sql:query>
                                <div class="collapsible-body">
                                    <ul class="collection" style="position: relative; width: 90%; margin-left: 5%;">
                                        <c:forEach var="syllabu" begin="0" items="${syllabus.rows}">
                                        <li class="collection-item avatar">
                                            <p>Ajouter un contenu qui montrera le syllabus sous forme de formulaire.</p>
                                            <br>
                                            <form class="col s12" onsubmit="return enregistrer();" name="progression" method="" action="">
                                                <div class="row">
                                                    <p>
                                                        <c:out value="${syllabu.contenu}"/>
                                                    </p>
                                                    <p>
                                                        <label>
                                                            <input type="checkbox" class="filled-in"/>
                                                            <span>Ajouter les éléments à partir de la base de données</span>
                                                        </label>
                                                    </p>
                                                </div>
                                                <button class="btn btn-large" style="background: #00E676;">Valider</button>
                                            </form>
                                        </li>
                                        </c:forEach>
                                    </ul>
                                </div>
                            </li>
                            </c:forEach>
                            </c:forEach>
                        </ul>
                    </div>
                </li>
                
            </ul>
                    </c:forEach></c:forEach>
=======
            <div class="row" style="position: relative; width: 50%; margin-left: 25%;">
                <form class="col s12" onsubmit="return recherche();" name="recherche" method="" action="">
                    <div class="row">
                        <div class="input-field col s8">
                            <i class="material-icons prefix">search</i>
                            <input id="recherche" type="text" required="required">
                            <label for="recherche">Rechercher une classe ou une matière</label>
                        </div> 
                        <div class="input-field col s4">
                            <button class="btn btn-large" style="background: #00E676;">Rechercher</button>
                        </div> 
                    </div>
                </form>
            </div>
            <!-- Affiche la liste des utilisateurs -->
            <sql:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3309/db" user="root" password=""/>
            <!-- sélectionner tous les utilisateurs -->
            <sql:query sql="SELECT * FROM compte ORDER BY username DESC" var="comptes"/>
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
                                                        <button class="btn btn-large" style="background: #00E676;">Valider</button>
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
>>>>>>> 538f6fc28656e3f80e9c05b9b9cd5ecbdc2b6b30
            <br><br>
        </div>
        
        <!-- Javascript -->
        <!-- Début -->
        <script>
            function recherche() {
                
            }
            
            
            function valider() {
                
            }
        </script>
        
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