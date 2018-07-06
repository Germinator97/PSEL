<<<<<<< HEAD
<%-- Recuperer le dernier element de compte et prendre son id afin de l'incrementer
=======
<%-- 
>>>>>>> 538f6fc28656e3f80e9c05b9b9cd5ecbdc2b6b30
    Document   : enregistrement
    Created on : 15 mai 2018, 18:21:03
    Author     : Asus R511L
--%>

<<<<<<< HEAD

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "sql" uri = "http://java.sun.com/jsp/jstl/sql" %>
<%@page session="true" %>

<%
    HttpSession sesion = request.getSession();
%>
=======
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
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
        
        <br>
        <ul class="tabs tabs-fixed-width tab-demo z-depth-1" style="position: relative; width: 90%;">
<<<<<<< HEAD
            <li class="tab"><a href="#utilisateurs">Utilisateurs</a></li>
            <li class="tab"><a href="#classes">Classes</a></li>
        </ul>
        <br>
        
        <div id="utilisateurs" class="col s12 center">
            <p style="text-align: center; font-family: Verdana; font-size: 1.5em; color: white;">Enregistrement des membres qui pourront avoir un accès total à l'application. Veuilez remplir les champs ci-dessous.</p>
            <div class="row" style="position: relative; width: 70%; margin-left: 15%;">
                <form class="col s12" onsubmit="return validateUser();" name="user" id="user" method="post" action="enregistrementUtilisateur">
                    <div class="row" style="background-color: whitesmoke;">
                        <div class="input-field col s6">
                            <select id="statut" name="statut" autofocus class="browser-default" style="position: relative; width: 91%; margin-left: 9.5%;" required="required">
                                <option value="statut" disabled selected>Statut</option>
                                <option value="Chef">Chef</option>
                                <option value="Professeur">Professeur</option>
                                <option value="Direction">Direction</option>
                            </select>
                        </div>
                        <div class="input-field col s6">
                            <i class="material-icons prefix">vpn_key</i>
                            <input id="matricule" name="matricule" type="text" required="required" disabled="disabled">
                            <label for="matricule">Matricule étudiant</label>
                        </div>
                        <div class="input-field col s6">
                            <i class="material-icons prefix">account_circle</i>
                            <input id="nom" name="nom" type="text" required="required">
=======
            <li class="tab"><a class="active" href="#utilisateurs">Utilisateurs</a></li>
            <li class="tab"><a href="#classes">Classes</a></li>
        </ul>
        <br>
        <div id="utilisateurs" class="col s12 center">
            <p style="text-align: center; font-family: Verdana; font-size: 1.5em;">Enregistrement des membres qui pourront avoir un accès total à l'application. Veuilez remplir les champs ci-dessous.</p>
            <div class="row" style="position: relative; width: 70%; margin-left: 15%;">
                <form class="col s12" onsubmit="return enregistrerUser();" name="enregistrementUser" id="enregistrementUser" method="" action="">
                    <div class="row">
                        <div class="input-field col s6">
                            <select id="statut" name="statut" class="browser-default" style="position: relative; width: 91%; margin-left: 9.5%;" required="required">
                                <option value="statut" disabled selected>Statut</option>
                                <option value="élève">Elève</option>
                                <option value="professeur">Professeur</option>
                                <option value="direction">Direction</option>
                            </select>
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
                            <input id="prenom" name="prenom" type="text" required="required">
=======
                            <input id="prenom" type="text" required="required">
>>>>>>> 538f6fc28656e3f80e9c05b9b9cd5ecbdc2b6b30
                            <label for="prenom">Prenom</label>
                        </div>
                        <div class="input-field col s6">
                            <i class="material-icons prefix">email</i>
<<<<<<< HEAD
                            <input id="mail" name="mail" type="email" required="required">
=======
                            <input id="mail" type="email" required="required">
>>>>>>> 538f6fc28656e3f80e9c05b9b9cd5ecbdc2b6b30
                            <label for="mail">Email</label>
                        </div>
                        <div class="input-field col s6">
                            <i class="material-icons prefix">phone</i>
<<<<<<< HEAD
                            <input id="telephone" name="telephone" type="tel" required="required">
                            <label for="telephone">Telephone</label>
                        </div>
                    </div>
                    <button id="enregistrerUser" name="enregistrerUser" class="btn btn-large" type="submit" style="position: relative; margin-left: 83%; background: #00E676;">Enregistrer</button>
                </form>
            </div>
            
            
            <br><br>
            <ul class="collapsible" style="position: relative; width: 90%; margin-left: 5%;">
                <li>
                    <div class="collapsible-header">
                        <i class="material-icons">people</i>
                        Utilisateurs
                    </div>
                    <div class="collapsible-body">
                        <sql:query dataSource = "${lecture}" var = "directions">
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
                            <c:forEach var="direction" begin="0" items="${directions.rows}">
                                <div class="collapsible-header">
                                    <i class="material-icons">person</i>
                                    <c:out value="${direction.nom}"/>
                                    <c:out value="${direction.prenom}"/>
                                    <c:out value="${direction.telephone}"/>
                                    <c:out value="${direction.email}"/>
                                    <input id="identifiant" name="identifiant" type="${direction.compte}" hidden="hidden">
                                </div>
                            </c:forEach>
                        </ul>
                    </div>
                </li>
            </ul>
            
            <sql:query dataSource = "${lecture}" var = "professeurs">
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
                            <c:forEach var="professeur" begin="0" items="${professeurs.rows}">
                                <div class="collapsible-header">
                                    <i class="material-icons">person</i>
                                    <c:out value="${professeur.nom}"/>
                                    <c:out value="${professeur.prenom}"/>
                                    <c:out value="${professeur.telephone}"/>
                                    <c:out value="${professeur.email}"/>
                                </div>
                            </c:forEach>
                        </ul>
                    </div>
                </li>
            </ul>
            
            <sql:query dataSource = "${lecture}" var = "chefs">
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
                            <c:forEach var="chef" begin="0" items="${chefs.rows}">
                                <div class="collapsible-header">
                                    <i class="material-icons">person</i>
                                    <c:out value="${chef.nom}"/>
                                    <c:out value="${chef.prenom}"/>
                                    <c:out value="${chef.telephone}"/>
                                    <c:out value="${chef.email}"/>
                                </div>
                            </c:forEach>
                        </ul>
                    </div>
                </li>
            </ul>
                    </div>
                </li>
            </ul>
            
=======
                            <input id="telephone" type="tel" required="required">
                            <label for="telephone">Telephone</label>
                        </div>
                        <div class="input-field col s6">
                            <i class="material-icons prefix"></i>
                            <input disabled="disabled">
                            <label></label>
                        </div>
                        <div class="input-field col s6">
                            <select id="classeUser" name="classeUser" class="browser-default" style="position: relative; width: 91%; height: auto; margin-left: 9.5%;" required="required" multiple="multiple" disabled="disabled">
                                <option disabled selected>Classe</option>
                                <option value="ingInfo2">ING INFO 2</option>
                                <option value="ingTelecom2">ING TELECOM 2</option>
                                <option value="ingE2i2">ING E2I 2</option>
                            </select>
                        </div>
                        <div class="input-field col s6">
                            <select id="matiereUser" name="matiereUser" class="browser-default" style="position: relative; width: 91%; height: auto; margin-left: 9.5%;" required="required" multiple="multiple" disabled="disabled">
                                <option disabled selected>Matière</option>
                                <option value="code1">Code1 Matière1</option>
                                <option value="code2">Code2 Matière2</option>
                                <option value="code3">Code3 Matière3</option>
                            </select>
                        </div>
                    </div>
                    <button class="btn btn-large tooltipped" data-position="bottom" data-tooltip="Un mail sera envoyé à email qui comportera son mot de passe" type="submit" style="position: relative; margin-left: 83%; background: #00E676;">Enregistrer</button>
                </form>
            </div>
            <br><br>
            <div class="col s12" style="position: relative; width: 90%; margin-left: 5%;">
                <div class="row" style="position: relative; width: 50%; margin-left: 25%;">
                    <form class="col s12" onsubmit="return rechercheUser();" name="rechercheUser" id="rechercheUser" method="" action="">
                        <div class="row">
                            <div class="input-field col s8">
                                <i class="material-icons prefix">search</i>
                                <input id="recherche" type="text" required="required">
                                <label for="recherche">Rechercher une matière</label>
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
                <!-- afficher les utilisateurs -->
                <ul class="collapsible" style="position: relative; width: 90%; margin-left: 5%;">
                    <c:forEach var="compte" begin="0" items="${comptes.rows}">
                        <li>
                            <div class="collapsible-header">
                                <i class="material-icons left">person</i>
                                <span class="title"><c:out value="${compte.username}"/></span>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
>>>>>>> 538f6fc28656e3f80e9c05b9b9cd5ecbdc2b6b30
                
                <br><br>
            </div>
        </div>
<<<<<<< HEAD
        
        <div id="classes" class="col s12 center">
            <p style="text-align: center; font-family: Verdana; font-size: 1.5em; color: white;">Enregistrement des différentes classes de chauque filière de chaque école. Veuilez remplir les champs ci-dessous.</p>
            <div class="input-field col s12"><p style="text-align: center; font-family: Verdana; font-size: 1.2em; color: white;">(Exemple de saisie pour le syllabus) I - le titre : le nombre d heure ; Ainsi de suite ;</p></div>
            <div class="row" style="position: relative; width: 70%; margin-left: 15%;">
                <form class="col s12" onsubmit="return validateClasse();" id="classe" name="classe" method="post" action="insertionClasse">
                    <div class="row" style="background-color: whitesmoke;">
                        <div class="input-field col s5">
                            <i class="material-icons prefix">work</i>
                            <input id="classeClasse" name="classeClasse" type="text" required="required">
                            <label for="classeClasse">Classe</label>
                        </div>
                        <sql:query dataSource="${lecture}" var="listeChefs">
                            SELECT * FROM chef
                                WHERE chef.matricule NOT IN (
                                    SELECT classe.chef FROM classe);
                        </sql:query>
                        <div class="input-field col s4">
                            <select id="chefClasse" name="chefClasse" autofocus class="browser-default" style="position: relative; width: 91%; margin-left: 9.5%;" required="required">
                                <option value="chefClasse" disabled selected>Chef de classe</option>
                                <c:forEach var="listeChef" begin="0" items="${listeChefs.rows}">
                                    <option value="${listeChef.matricule}">
                                        <c:out value="${listeChef.nom}"/>
                                        <c:out value="${listeChef.prenom}"/>
                                    </option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="input-field col s3">
                            <button class="btn btn-large" id="addClasse" name="addClasse" type="submit" style="position: relative; background: #00E676; font-size: 0.9em;">Ajouter une classe</button>
                        </div>
                    </div>
                </form>
                
                
                <form class="col s12" onsubmit="return validateMatiere();" id="matiere" name="matiere" method="post" action="insertionMatiere">
                    <div class="row" style="background-color: whitesmoke;">
                        <div class="input-field col s3">
                            <i class="material-icons prefix">vpn_key</i>
                            <input id="codeMatiere" name="codeMatiere" type="text" required="required">
                            <label for="codeMatiere">Code matière</label>
                        </div>
                        <div class="input-field col s2">
                            <i class="material-icons prefix">access_times</i>
                            <input id="heureMatiere" name="heureMatiere" type="text" required="required">
                            <label for="heureMatiere">Heure</label>
                        </div>
                        <div class="input-field col s4">
                            <i class="material-icons prefix">book</i>
                            <input id="matiereMatiere" name="matiereMatiere" type="text" required="required">
                            <label for="matiereMatiere">Matiere</label>
                        </div>
                        <sql:query dataSource="${lecture}" var="listeProfs">
                            SELECT * FROM professeur;
                        </sql:query>
                            <div class="input-field col s3">
                                <select id="professeurMatiere" name="professeurMatiere" class="browser-default" style="position: relative; width: 91%; margin-left: 9.5%;" required="required">
                                    <option value="professeurMatiere" disabled selected>Professeur</option>
                                    <c:forEach var="listeProf" begin="0" items="${listeProfs.rows}">
                                        <option value="${listeProf.id}">
                                            <c:out value="${listeProf.nom}"/>
                                            <c:out value="${listeProf.prenom}"/>
                                        </option></c:forEach>
                                </select>
                            </div>
                            <div class="input-field col s7">
                                <i class="material-icons prefix">import_contacts</i>
                                <textarea class="materialize-textarea" id="syllabusMatiere" name="syllabusMatiere" type="text" required="required"></textarea>
                                <label for="syllabusMatiere">Syllabus</label>
                            </div>
                            <sql:query dataSource="${lecture}" var="listeClasses">
                            SELECT * FROM classe;
                        </sql:query>
                            <div class="input-field col s2">
                                <select id="classeMatiere" name="classeMatiere" class="browser-default" style="position: relative; width: 91%; margin-left: 9.5%;" required="required">
                                    <option value="classeMatiere" disabled selected>Classe</option>
                                    <c:forEach var="listeClasse" begin="0" items="${listeClasses.rows}">
                                        <option value="${listeClasse.id}">
                                            <c:out value="${listeClasse.nom}"/>
                                        </option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="input-field col s3">
                                <button class="btn btn-large" type="submit" id="addMatiere" name="addMatiere" style="position: relative; background: #00E676; font-size: 0.9em;">Ajouter une matière</button>
                            </div>
                    </div>
                </form>
            </div>
            <br><br>
                <sql:query dataSource = "${lecture}" var = "classes">
                    SELECT * FROM classe;
                </sql:query>
                    
            
        <ul class="collapsible" style="position: relative; width: 90%; margin-left: 5%;">
                <li>
                    <div class="collapsible-header">
                        <i class="material-icons">work</i>
                        Classes - Matieres
                    </div>
                    <div class="collapsible-body">
                        <c:forEach var="classe" begin="0" items="${classes.rows}">
                        <sql:query dataSource = "${lecture}" var = "chefs">
                            SELECT * FROM chef WHERE chef.matricule='${classe.chef}';
                        </sql:query>
                        <c:forEach var="chef" begin="0" items="${chefs.rows}">
                        <ul class="collapsible" style="position: relative; width: 90%; margin-left: 5%;">
                            
                            <li>
                                <div class="collapsible-header">
                                    <i class="material-icons">work</i>
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
                                                <sql:query dataSource = "${lecture}" var = "profs">
                                                    SELECT * FROM professeur WHERE professeur.id=${matiere.prof};
                                                </sql:query>
                                                <c:forEach var="prof" begin="0" items="${profs.rows}">
                                                <div class="collapsible-header">
                                                    <i class="material-icons">book</i>
                                                    <c:out value="${matiere.code}"/>
                                                    <c:out value="${matiere.nom}"/>
                                                    -
                                                    <c:out value="${prof.nom}"/>
                                                    <c:out value="${prof.prenom}"/>
                                                    <c:out value="${prof.telephone}"/>
                                                    <c:out value="${prof.email}"/>
                                                </div>
                                            </c:forEach></c:forEach>
                                        </ul>
                                </div>
                            </li>
                        </ul>
                                </c:forEach></c:forEach>
                    </div>
                </li>
            </ul>
=======
        <div id="classes" class="col s12 center">
            <p style="text-align: center; font-family: Verdana; font-size: 1.5em;">Enregistrement des différentes classes de chauque filière de chaque école. Veuilez remplir les champs ci-dessous.</p>
            <div class="row" style="position: relative; width: 70%; margin-left: 15%;">
                <form class="col s12" onsubmit="return enregistrerClasse();" id="enregistrementClasse" name="enregistrementClasse" method="" action="">
                    <div class="row" id="dynamic_field">
                        <div class="input-field col s8">
                            <i class="material-icons prefix">work</i>
                            <input id="classe" type="text" required="required">
                            <label for="classe">Classe</label>
                        </div>
                        <div class="input-field col s4">
                            <button class="btn btn-large" id="add" name="add" onclick="addMatiere();" style="position: relative; background: #00E676; font-size: 0.9em;">Ajouter une nouvelle matière</button>
                        </div>
                    </div>
                    <button class="btn btn-large" type="submit" style="position: relative; margin-left: 83%; background: #00E676;">Enregistrer</button>
                </form>
            </div>
            <br><br>
            <div class="col s12" style="position: relative; width: 90%; margin-left: 5%;">
                <div class="row" style="position: relative; width: 50%; margin-left: 25%;">
                    <form class="col s12" onsubmit="return rechercheClasse();" name="rechercheClasse" id="rechercheClasse" method="" action="">
                        <div class="row">
                            <div class="input-field col s8">
                                <i class="material-icons prefix">search</i>
                                <input id="recherche" type="text" required="required">
                                <label for="recherche">Rechercher une matière</label>
                            </div> 
                            <div class="input-field col s4">
                                <button class="btn btn-large" style="background: #00E676;">Rechercher</button>
                            </div> 
                        </div>
                    </form>
                </div>
                <ul class="collapsible" style="position: relative; width: 90%; margin-left: 5%;">
                    <li>
                        <div class="collapsible-header"><i class="material-icons">work</i>Nom de la classe</div>
                        <div class="collapsible-body">
                            <div class="collapsible-header">
                                <div>
                                    <i class="material-icons left">book</i>
                                </div>
                                <div>
                                <span class="title">Nom de la matiere</span>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
>>>>>>> 538f6fc28656e3f80e9c05b9b9cd5ecbdc2b6b30
                <br><br>
            </div>
        </div>
        
        <!-- Javascript -->
        <!-- Début -->
        <script>
            M.AutoInit();
        </script>
        
        <script>
            var statut = document.getElementById('statut');
<<<<<<< HEAD
            var matricule = document.getElementById('matricule');
            
            statut.addEventListener('change', function() {
                var valeur = statut.options[statut.selectedIndex].innerHTML;
                if (valeur === "Chef") {
                    matricule.disabled = false;
                }
                if ((valeur === "Direction") || (valeur === "Professeur")) {
                    matricule.disabled = true;
=======
            var classe = document.getElementById('classeUser');
            var matiere = document.getElementById('matiereUser');
            
            statut.addEventListener('change', function() {
                var valeur = statut.options[statut.selectedIndex].innerHTML;
                if (valeur === "Professeur") {
                    classe.disabled = false;
                    matiere.disabled = false;
                }
                if (valeur === "Direction") {
                    matiere.disabled = true;
                    classe.disabled = true;
                }
                if (valeur === "Elève") {
                    matiere.disabled = true;
                    classe.disabled = false;
>>>>>>> 538f6fc28656e3f80e9c05b9b9cd5ecbdc2b6b30
                }
            });
        </script>
        
        <script>
<<<<<<< HEAD
            function validateUser() {
                
                var link = document.getElementById("user");
                
                var statut = document.getElementById("statut").value;
                
                if (statut === "statut") {
                    alert("Veuillez sélectionner un statut pour éffectuer un enregistrement");
                    document.user.statut.focus();
                    return false;
                }
                
                alert("Enregistrement éffectué !!!");
            }
        </script>
        
        <script>
            function validateClasse() {
                
                var link = document.getElementById("classe");
                
                var chefClasse = document.getElementById("chefClasse").value;
                
                if (chefClasse === "chefClasse") {
                    alert("Veuillez sélectionner un chef de classe pour éffectuer un enregistrement");
                    document.classe.chefClasse.focus();
                    return false;
                }
                alert("Enregistrement de la classe éffectué !!!");
                
            }
        </script>
        
        <script>
            function validateMatiere() {
                
                var link = document.getElementById("matiere");
                
                var professeurMatiere = document.getElementById("professeurMatiere").value;
                var classeMatiere = document.getElementById("classeMatiere").value;
                
                if (professeurMatiere === "professeurMatiere") {
                    alert("Veuillez sélectionner un profeseur pour éffectuer un enregistrement");
                    document.matiere.professeurMatiere.focus();
                    return false;
                }
                
                if (classeMatiere === "classeMatiere") {
                    alert("Veuillez sélectionner une classe pour éffectuer un enregistrement");
                    document.matiere.classeMatiere.focus();
                    return false;
                }
                alert("Enregistrement de la matière éffectué !!!");
                
            }
=======
            function enregistrerUser() {
                var form = document.getElementById("enregistrementUser");
                var statut = document.getElementById("statut").value;
            
                if (statut === "statut") {
                    alert("Veuillez sélectionner un statut pour éffectuer un enregistrement");
                    document.enregistrementUser.statut.focus();
                    return false;
                }
>>>>>>> 538f6fc28656e3f80e9c05b9b9cd5ecbdc2b6b30
        </script>
        
        <script>
            <%-- var nom = document.forms["enregistrementUser"]["nom"];
            var prenom = document.forms["enregistrementUser"]["prenom"];
            var email = document.forms["enregistrementUser"]["email"];
            var telephone = document.forms["enregistrementUser"]["telephone"];
            var ecole = document.forms["enregistrementClasse"]["ecole"];
            var filiere = document.forms["enregistrementClasse"]["filiere"];
            var classe = document.forms["enregistrementClasse"]["classe"];
            var matiere = document.forms["enregistrementClasse"]["matiere"];
            
            nom.addEventListener("blur", verifieNom, true);
            prenom.addEventListener("blur", verifiePrenom, true);
            email.addEventListener("blur", verifieEmail, true);
            telephone.addEventListener("blur", verifieTelephone, true);
            ecole.addEventListener("blur", verifieEcole, true);
            filiere.addEventListener("blur", verifieFiliere, true);
            classe.addEventListener("blur", verifieClasse, true);
            matiere.addEventListener("blur", verifieMatiere, true);
            
            var nbrFiliere = document.getElementById('nombreFiliere');
            var filiereInput = document.getElementById('filiere');
            
            nbrFiliere.addEventListener('change', function() {
                var valeur = nbrFiliere.options[nbrFiliere.selectedIndex].innerHTML;
                if (valeur === "1") {
                    filiereInput.disabled = false;
                }
                else {
                    filiereInput.disabled = true;
                }
            });
            
            function enregistrementUser() {
                if(nom.value === "") {
                    nom.focus();
                    retuen false;
                }
                
            }
            
            function enregistrementClasse() {
                
            }
            
            function verifieNom() {
                if(nom.value !== "") {
                    return true;
                }
            }
            
            function verifiePrenom() {
                
            }
            
            function verifieEmail() {
                
            }
            
            function verifieTelephone() {
                
            }
            
            function verifieEcole() {
                
            }
            
            function verifieFiliere() {
                
            }
            
            function verifieClasse() {
                
            }
            
            function verifieMatiere() {
                
            } --%>
        </script>
<<<<<<< HEAD
        <%--
        <script>
            function dynamic() {
                return '<div></div>';
=======
        
        <script>
            var i=2;
            function dynamic() {
                return '<div><div class="input-field col s6"><i class="material-icons prefix">book</i><input id="code" type="text" required="required"><label for="code">Code matière N°'+i+'</label></div><div class="input-field col s6"><i class="material-icons prefix">book</i><input id="matiere" type="text" required="required"><label for="matiere">Matiere</label></div><div class="input-field col s12"><p style="text-align: center; font-family: Verdana; font-size: 1.2em;">(Exemple de saisie pour le syllabus) I - le titre : le nombre d heure ; Ainsi de suite ;</p></div><div class="input-field col s8"><i class="material-icons prefix">book</i><textarea class="materialize-textarea" id="syllabus" type="text" required="required"></textarea><label for="syllabus">Syllabus</label></div><div class="input-field col s4"><button class="btn btn-large" id="remove" name="remove" onclick="removeMatiere(this);" style="position: relative; background: #00E676; font-size: 0.9em;">Supprimer la matière</button></div></div>';
>>>>>>> 538f6fc28656e3f80e9c05b9b9cd5ecbdc2b6b30
            }
            
            function addMatiere() {
                var div = document.createElement('DIV');
                div.innerHTML = dynamic();
                document.getElementById("dynamic_field").appendChild(div);
            }
            
            function removeMatiere(div) {
                document.getElementById("dynamic_field").removeChild(div.parentNode.parentNode.parentNode);
            }
        </script>
<<<<<<< HEAD
        --%>
=======
>>>>>>> 538f6fc28656e3f80e9c05b9b9cd5ecbdc2b6b30
        <!-- Fin -->
        
        <!-- Importation du fichier footer.jsp  -->
        <jsp:include page="footer.jsp"></jsp:include>
        
        <!-- Importation du fichier body.jsp  -->
        <jsp:include page="body.jsp"></jsp:include>
      
    </body>
    
<<<<<<< HEAD
</html>
=======
</html>
>>>>>>> 538f6fc28656e3f80e9c05b9b9cd5ecbdc2b6b30
