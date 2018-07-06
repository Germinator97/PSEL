<%-- 
    Document   : direction
    Created on : 30 mai 2018, 01:23:18
    Author     : germinator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "sql" uri = "http://java.sun.com/jsp/jstl/sql" %>
<%@page session="true" %>

<%
    HttpSession sesion = request.getSession();
    if (sesion.getAttribute("id")== null) {
        response.sendRedirect("../loginDirection.jsp");
    }
    else {
        String id = sesion.getAttribute("id").toString();
        if (id.equals(null)) {
            response.sendRedirect("../loginDirection.jsp");
        }
    }
%>

<!DOCTYPE html>

<html>

    <head>
        
        <!-- Importation du fichier head.jsp  -->
        <jsp:include page="head.jsp"></jsp:include>
        
    </head>
    
    <body style="font-family: 'Open Sans', sans-serif; height: 100vh; background: url('Images/photo_bg.jpg') 50% fixed; background-size: cover;">
        
        <!-- Importation du fichier header.jsp  -->
        <jsp:include page="header.jsp"></jsp:include>
        
        <br>
        <div id="acceuil" class="col s12 center">
            <p style="text-align: center; font-family: Verdana; font-size: 1.5em; color: white;">Votre tableau de bord vous permet en tant que membre de la direction de visualisez les enregistrements des différentes progression de chaque cours. Sélectionner une classe puis une matière.</p>
            
            <sql:setDataSource var = "lecture" driver = "com.mysql.jdbc.Driver" url = "jdbc:mysql://localhost:3306/psel" user = "root"  password = ""/>
        
        <sql:query dataSource = "${lecture}" var = "classes">
            SELECT * FROM classe;
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
                        <sql:query dataSource = "${lecture}" var = "matieres">
                            SELECT * FROM matiere WHERE matiere.salle=${classe.id};
                        </sql:query>
                        <ul class="collapsible" style="position: relative; width: 90%; margin-left: 5%;">
                            <c:forEach var="matiere" begin="0" items="${matieres.rows}">
                            <sql:query dataSource = "${lecture}" var = "professeurs">
                                SELECT * FROM professeur WHERE professeur.id=${matiere.prof};
                            </sql:query>
                            <c:forEach var="professeur" begin="0" items="${professeurs.rows}">
                            <li>
                                <div class="collapsible-header">
                                    <i class="material-icons">book</i>
                                    <c:out value="${matiere.code}"/>
                                    <c:out value="${matiere.nom}"/>
                                    -
                                    <c:out value="${professeur.nom}"/>
                                    <c:out value="${professeur.prenom}"/>
                                    <c:out value="${professeur.telephone}"/>
                                    <c:out value="${professeur.email}"/>
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
                                                <button class="btn btn-large" style="background: #00E676;">Enregistrer</button>
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
                    </c:forEach>
                        </c:forEach>
            <%--
        <%
            if(request.getParameter("rechercher")!=null) {
                String user = request.getParameter("recherche");
                pageContext.setAttribute("user", new String(user));
            }
        
        %>
        <c:out value="${user}" />
        
        <sql:setDataSource var = "lecture" driver = "com.mysql.jdbc.Driver" url = "jdbc:mysql://localhost:3309/PSEL" user = "root"  password = ""/>
        
        <sql:query dataSource = "${lecture}" var = "classes">
           SELECT * FROM Classe;
        </sql:query>
           
            --%>
            
            <br><br>
        </div>
        
        <!-- Javascript -->
        <!-- Début -->
        <script>
            function recherche() {
               
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
