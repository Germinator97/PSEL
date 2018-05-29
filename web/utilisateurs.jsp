<%-- 
    Document   : utilisateur
    Created on : 15 mai 2018, 22:41:33
    Author     : Asus R511L
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix = "sql" uri = "http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix = "x" uri = "http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>

<html>
    
    <head>
        
        <!-- Importation du fichier head.jsp  -->
        <jsp:include page="head.jsp"></jsp:include>
        
    </head>
    
    <body>
        
        <!-- Importation du fichier header.jsp  -->
        <jsp:include page="header.jsp"></jsp:include>
        
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
                        <label for="nom">Nom</label>
                    </div>  
                    <div class="input-field col s6">
                        <i class="material-icons prefix">account_circle</i>
                        <input id="prenom" type="text" required="required">
                        <label for="prenom">Prenom</label>
                    </div>
                        <div class="input-field col s6">
                        <i class="material-icons prefix">email</i>
                        <input id="mail" type="email" required="required">
                        <label for="mail">Email</label>
                    </div>
                    <div class="input-field col s6">
                        <i class="material-icons prefix">phone</i>
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
        
        <br>
        
        <!-- Javascript -->
        <!-- Début -->
        <script>
            M.AutoInit();
        </script>
        
        <script>
            function modification() {
                
            }
            
            function recherche() {
                
            }
        </script>
        <!-- Fin -->
        
        <!-- Importation du fichier footer.jsp  -->
        <jsp:include page="footer.jsp"></jsp:include>
        
        <!-- Importation du fichier body.jsp  -->
        <jsp:include page="body.jsp"></jsp:include>
      
    </body>
    
</html>

