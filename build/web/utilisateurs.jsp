<%-- 
    Document   : utilisateur
    Created on : 15 mai 2018, 22:41:33
    Author     : Asus R511L
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<<<<<<< HEAD
<%@ taglib prefix = "sql" uri = "http://java.sun.com/jsp/jstl/sql" %>
<%@page session="true" %>

<%
    HttpSession sesion = request.getSession();
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
        
        <sql:setDataSource var = "lecture" driver = "com.mysql.jdbc.Driver" url = "jdbc:mysql://localhost:3306/psel" user = "root"  password = ""/>
=======
    <body>
>>>>>>> 538f6fc28656e3f80e9c05b9b9cd5ecbdc2b6b30
        
        <!-- Importation du fichier header.jsp  -->
        <jsp:include page="header.jsp"></jsp:include>
        
<<<<<<< HEAD
        <%
                int id = 0;
                if (sesion.getAttribute("id")== null) {
                    id = (Integer)request.getAttribute("id");
                    pageContext.setAttribute("id", id);
                }
        %>
        <sql:query dataSource="${lecture}" var="comptes">
            SELECT * FROM compte WHERE compte.id=${id};
        </sql:query>
        <div class="row" style="position: relative; width: 70%;">
            <p style="text-align: center; font-family: Verdana; font-size: 2em; color: white;">Mon compte</p>
            <form class="col s12" onsubmit="return validateCompte();" id="compte" name="compte" method="post" action="modificationCompte">
                <div class="row" style="background-color: whitesmoke;">
                    <c:forEach var="compte" begin="0" items="${comptes.rows}">
                    <div class="input-field col s4">
                        <i class="material-icons prefix">account_circle</i>
                        <input id="username" name="username" type="text" required="required" placeholder="${compte.username}">
                        <label for="username">Nom d'utilisateur</label>
                    </div>  
                    <div class="input-field col s4">
                        <i class="material-icons prefix">vpn_key</i>
                        <input id="password" name="password" type="password" required="required">
                        <label for="password">Mot de passe</label>
                    </div>
                        </c:forEach>
                    <div class="input-field col s4">
                        <i class="material-icons prefix">account_circle</i>
                        <input id="confirm" name="confirm" type="password" required="required">
                        <label for="confirm">Confirmation du mot de passe</label>
                    </div>
                        <input id="identifiant" name="identifiant" type="text" hidden="hidden" value="${id}">
                </div>
                        
                <button id="valider" name="valider" class="btn btn-large" type="submit" style="position: relative; margin-left: 83%; background: #00E676;">Modifier</button>
            </form>
        </div>
                
        <sql:query dataSource="${lecture}" var="combinaisons">
            SELECT * FROM compte, chef WHERE compte.id=chef.compte
            UNION
            SELECT * FROM compte, professeur WHERE compte.id=professeur.compte
            UNION
            SELECT * FROM compte, direction WHERE compte.id=direction.compte;
        </sql:query>
        <c:forEach var="combinaison" begin="0" items="${combinaisons.rows}">
            <c:if test="${combinaison.id eq id}">
        <br>
        <div class="row" style="position: relative; width: 70%;">
            
            <p style="text-align: center; font-family: Verdana; font-size: 2em; color: white;">Mes informations</p>
            <form class="col s12" onsubmit="return validateInfo();" id="combinaison" name="combinaison" method="post" action="modificationUtilisateur">
                <div class="row" style="background-color: whitesmoke;">
                    <div class="input-field col s6">
                        <i class="material-icons prefix">account_circle</i>
                        <input id="nom" name="nom" type="text" required="required" placeholder="${combinaison.nom}">
=======
        <br>
        <p style="text-align: center; font-family: Verdana; font-size: 2em;">Mes informations</p>
        
        <div class="row" style="position: relative; width: 70%;">
            <form class="col s12" onsubmit="return modification();" name="modification" method="" action="">
                <div class="row">
                    <div class="input-field col s6">
                        <i class="material-icons prefix">account_circle</i>
                        <input id="username" type="text" required="required">
                        <label for="username">Utilisateur</label>
                    </div>  
                    <div class="input-field col s6">
                        <i class="material-icons prefix">vpn_key</i>
                        <input id="password" type="password" required="required">
                        <label for="password">Mot de passe</label>
                    </div>
                    <div class="input-field col s6">
                        <i class="material-icons prefix">account_circle</i>
                        <input id="nom" type="text" required="required">
>>>>>>> 538f6fc28656e3f80e9c05b9b9cd5ecbdc2b6b30
                        <label for="nom">Nom</label>
                    </div>  
                    <div class="input-field col s6">
                        <i class="material-icons prefix">account_circle</i>
<<<<<<< HEAD
                        <input id="prenom" name="prenom" type="text" required="required" placeholder="${combinaison.prenom}">
=======
                        <input id="prenom" type="text" required="required">
>>>>>>> 538f6fc28656e3f80e9c05b9b9cd5ecbdc2b6b30
                        <label for="prenom">Prenom</label>
                    </div>
                        <div class="input-field col s6">
                        <i class="material-icons prefix">email</i>
<<<<<<< HEAD
                        <input id="mail" name="mail" type="email" required="required" placeholder="${combinaison.email}">
=======
                        <input id="mail" type="email" required="required">
>>>>>>> 538f6fc28656e3f80e9c05b9b9cd5ecbdc2b6b30
                        <label for="mail">Email</label>
                    </div>
                    <div class="input-field col s6">
                        <i class="material-icons prefix">phone</i>
<<<<<<< HEAD
                        <input id="telephone" name="telephone" type="tel" required="required" placeholder="${combinaison.telephone}">
                        <label for="telephone">Telephone</label>
                    </div>
                        <input id="identifiant" name="identifiant" type="text" hidden="hidden" value="${id}">
                </div>
                        <button id="enregistrer" name="enregistrer" class="btn btn-large" type="submit" style="position: relative; margin-left: 83%; background: #00E676;">Modifier</button>
            </form>
        </div>
                        </c:if>
        </c:forEach>
        
        
        
        <br><br>
        <p style="text-align: center; font-family: Verdana; font-size: 2em; color: white;">Les autres utilisateurs</p>
        
        <sql:query dataSource = "${lecture}" var = "listeDirections">
            SELECT * FROM direction;
        </sql:query>
        <ul class="collapsible" style="position: relative; width: 90%; margin-left: 5%;">
                <li>
                    <div class="collapsible-header">
                        <i class="material-icons">people</i>
                        Direction
                    </div>
                    <div class="collapsible-body">
                        <ul class="collapsible" style="position: relative; width: 90%; margin-left: 5%;">
                            <c:forEach var="listeDirection" begin="0" items="${listeDirections.rows}">
                            <li>
                                <div class="collapsible-header">
                                    <i class="material-icons">person</i>
                                    <c:out value="${listeDirection.nom}"/>
                                    <c:out value="${listeDirection.prenom}"/>
                                    <c:out value="${listeDirection.telephone}"/>
                                    <c:out value="${listeDirection.email}"/>
                                </div>
                            </li>
                            </c:forEach>
                        </ul>
                    </div>
                </li>
            </ul>
            
            <sql:query dataSource = "${lecture}" var = "listeProfesseurs">
            SELECT * FROM professeur;
        </sql:query>
                    
        <ul class="collapsible" style="position: relative; width: 90%; margin-left: 5%;">
                <li>
                    <div class="collapsible-header">
                        <i class="material-icons">people</i>
                        Professeurs
                    </div>
                    <div class="collapsible-body">
                        <ul class="collapsible" style="position: relative; width: 90%; margin-left: 5%;">
                            <c:forEach var="listeProfesseur" begin="0" items="${listeProfesseurs.rows}">
                            <li>
                                <div class="collapsible-header">
                                    <i class="material-icons">person</i>
                                    <c:out value="${listeProfesseur.nom}"/>
                                    <c:out value="${listeProfesseur.prenom}"/>
                                    <c:out value="${listeProfesseur.telephone}"/>
                                    <c:out value="${listeProfesseur.email}"/>
                                </div>
                            </li>
                            </c:forEach>
                        </ul>
                    </div>
                </li>
            </ul>
            
            <sql:query dataSource = "${lecture}" var = "listeChefs">
            SELECT * FROM chef;
        </sql:query>
                    
        <ul class="collapsible" style="position: relative; width: 90%; margin-left: 5%;">
                <li>
                    <div class="collapsible-header">
                        <i class="material-icons">people</i>
                        Chefs
                    </div>
                    <div class="collapsible-body">
                        <ul class="collapsible" style="position: relative; width: 90%; margin-left: 5%;">
                            <c:forEach var="listeChef" begin="0" items="${listeChefs.rows}">
                            <li>
                                <div class="collapsible-header">
                                    <i class="material-icons">person</i>
                                    <c:out value="${listeChef.nom}"/>
                                    <c:out value="${listeChef.prenom}"/>
                                    <c:out value="${listeChef.telephone}"/>
                                    <c:out value="${listeChef.email}"/>
                                </div>
                            </li>
                            </c:forEach>
                        </ul>
                    </div>
                </li>
            </ul>
=======
                        <input id="telephone" type="tel" required="required">
                        <label for="telephone">Telephone</label>
                    </div>
                </div>
                <button class="btn btn-large tooltipped" data-position="bottom" data-tooltip="Vos informations seront toutes modifiées" type="submit" style="position: relative; margin-left: 83%; background: #00E676;">Modifier</button>
            </form>
        </div>
        <p style="text-align: center; font-family: Verdana; font-size: 2em;">Les autres utilisateurs</p>
        <div class="row" style="position: relative; width: 50%;">
            <form class="col s12">
                <div class="row" onsubmit="return recherche();" name="recherche" method="" action="">
                    <div class="input-field col s8">
                        <i class="material-icons prefix">search</i>
                        <input id="recherche" type="text" required="required">
                        <label for="recherche">Rechercher un utilisateur</label>
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
                <div class="collapsible-header"><i class="material-icons">people</i><c:out value="${compte.username}"/></div>
                <div class="collapsible-body">
                    <ul class="collection" style="position: relative; width: 90%; margin-left: 5%;">
                    <li class="collection-item avatar">
                        <ul class="collapsible">
                    <c:forEach var="compte" begin="0" items="${comptes.rows}">
                        <li>
                            <div class="collapsible-header">
                                <i class="material-icons">person</i><c:out value="${compte.username}"/>
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
        
        <br>
        
        <!-- Javascript -->
        <!-- Début -->
        <script>
            M.AutoInit();
        </script>
        
        <script>
<<<<<<< HEAD
                
                function validateInfo() {
                    alert("Vos informations ont été modifiées !!!");
                }
            
            
                function validateCompte() {
                
                var compte = document.getElementById("compte");
                var password = document.getElementById("password").value;
                var confirm = document.getElementById("confirm").value;
                var ilegal = /[\W_]/;
                
                if (confirm === password) {
                    if (ilegal.test(password)) {
                        alert("Votre mot de passe contient des caractères non autorisés !!!");
                        document.compte.password.focus();
                        return false;
                    }
                    else {
                        alert("Modification du compte éffectuée !!!");
                    }
                }
                
                else {
                    alert("Votre mot de passe ne correspond pas. Veuillez le resaisir !!!");
                    document.compte.confirm.focus();
                    return false;
                }
                
            }
            </script>
            
            
        
        <script>
=======
            function modification() {
                
            }
            
>>>>>>> 538f6fc28656e3f80e9c05b9b9cd5ecbdc2b6b30
            function recherche() {
                
            }
        </script>
        <!-- Fin -->
        
<<<<<<< HEAD
        
        
=======
>>>>>>> 538f6fc28656e3f80e9c05b9b9cd5ecbdc2b6b30
        <!-- Importation du fichier footer.jsp  -->
        <jsp:include page="footer.jsp"></jsp:include>
        
        <!-- Importation du fichier body.jsp  -->
        <jsp:include page="body.jsp"></jsp:include>
      
    </body>
    
</html>

