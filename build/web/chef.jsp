<%-- 
    Document   : chef
    Created on : 24 mai 2018, 21:35:25
    Author     : germinator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "sql" uri = "http://java.sun.com/jsp/jstl/sql" %>


<%
    HttpSession sesion = request.getSession();
    if (sesion.getAttribute("id")== null) {
        response.sendRedirect("../loginChef.jsp");
    }
    else {
        String id = sesion.getAttribute("id").toString();
        if (id.equals(null)) {
            response.sendRedirect("../loginChef.jsp");
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
        
        <!-- Connexion à la base de données -->
        <sql:setDataSource var = "lecture" driver = "com.mysql.jdbc.Driver" url = "jdbc:mysql://localhost:3306/psel" user = "root"  password = ""/>
        
        <br>
        <div id="chefs" class="col s12 center">
            <p style="text-align: center; font-family: Verdana; font-size: 1.5em; color: white;">Votre tableau de bord vous permet en tant que chef de classe d'effectuer des enregistrements sur la progression des cours. Pour faire un enregistrement, selectionner une matière.</p>
            
            <!-- Récupération de l'identifiant de l'utilisateur connecté -->
            <%
                int id = 0;
                if (sesion.getAttribute("id")== null) {
                    id = (Integer)request.getAttribute("id");
                    pageContext.setAttribute("id", id);
                }
            %>
            
            <!-- Sélection de toutes les matières concernées par l'utilisateur connecté -->
            <sql:query dataSource = "${lecture}" var = "matieres">
                SELECT * FROM matiere WHERE
                matiere.salle=(SELECT classe.id FROM classe WHERE
                    classe.chef=(SELECT chef.matricule FROM chef WHERE
                        chef.compte=${id}));
            </sql:query>
                        
            <!-- Parcours de ces matières -->
            <c:forEach var="matiere" begin="0" items="${matieres.rows}">
                
                <!-- Récupération de tous les professeurs qui sont affectés à chaque matière -->
                <sql:query dataSource = "${lecture}" var = "professeurs">
                    SELECT * FROM professeur WHERE professeur.id=${matiere.prof};
                </sql:query>
                    
                <!-- Parcours de ces professeurs -->    
                <c:forEach var="professeur" begin="0" items="${professeurs.rows}">
                    <ul class="collapsible" style="position: relative; width: 90%; margin-left: 5%;">
                        <li>
                            <!-- Affichage des informations sur une matière et son professeur -->
                            <div class="collapsible-header"><i class="material-icons">book</i>
                                <c:out value="${matiere.code}"/>
                                <c:out value="${matiere.nom}"/>
                                -
                                <c:out value="${professeur.nom}"/>
                                <c:out value="${professeur.prenom}"/>
                                <c:out value="${professeur.telephone}"/>
                                <c:out value="${professeur.email}"/>
                            </div>
                            <div class="collapsible-body">
                                <ul class="collection" style="position: relative; width: 90%; margin-left: 5%;">
                                    <li class="collection-item avatar">
                                        <p>Ajouter un contenu qui montrera le syllabus sous forme de formulaire.</p>
                                        <br>
                                        <form class="col s12" onsubmit="return enregistrer();" name="progression" method="" action="">
                                            <div class="row">
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
                                </ul>
                            </div>
                        </li>
                    </ul>
                </c:forEach>
            </c:forEach>
            <br><br>
        </div>
        
        <!-- Javascript -->
        <!-- Début -->
        <script>
            function enregistrer() {
                
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