<%-- 
    Document   : enregistrement
    Created on : 15 mai 2018, 18:21:03
    Author     : Asus R511L
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <ul class="tabs tabs-fixed-width tab-demo z-depth-1" style="position: relative; width: 90%;">
            <li class="tab"><a class="active" href="#utilisateurs">Utilisateurs</a></li>
            <li class="tab"><a href="#classes">Classes</a></li>
        </ul>
        <br>
        <div id="utilisateurs" class="col s12 center">
            <p style="text-align: center; font-family: Verdana; font-size: 1.5em;">Enregistrement des membres qui pourront avoir un accès total à l'application. Veuilez remplir les champs ci-dessous.</p>
            <div class="row" style="position: relative; width: 70%; margin-left: 15%;">
                <form class="col s12" onsubmit="return enregistrerUser();" name="enregistrementUser" method="" action="">
                    <div class="row">
                        <div class="input-field col s6">
                            <select id="statut" class="browser-default" style="position: relative; width: 91%; margin-left: 9.5%;" required="required">
                                <option disabled selected>Statut</option>
                                <option value="élève">Elève</option>
                                <option value="professeur">Professeur</option>
                                <option value="direction">Direction</option>
                            </select>
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
                        <div class="input-field col s6">
                            <select id="classe" class="browser-default" style="position: relative; width: 91%; height: 20%; margin-left: 9.5%;" required="required" multiple="multiple">
                                <option disabled selected>Classe</option>
                                <option value="ingInfo2">ING INFO 2</option>
                                <option value="ingTelecom2">ING TELECOM 2</option>
                                <option value="ingE2i2">ING E2I 2</option>
                            </select>
                        </div>
                    </div>
                    <button class="btn btn-large tooltipped" data-position="bottom" data-tooltip="Un mail sera envoyé à email qui comportera son mot de passe" type="submit" style="position: relative; margin-left: 83%; background: #00E676;">Enregistrer</button>
                </form>
            </div>
            <br><br>
        </div>
        <div id="classes" class="col s12 center">
            <p style="text-align: center; font-family: Verdana; font-size: 1.5em;">Enregistrement des différentes classes de chauque filière de chaque école. Veuilez remplir les champs ci-dessous.</p>
            <div class="row" style="position: relative; width: 70%; margin-left: 15%;">
                <form class="col s12" onsubmit="return enregistrerClasse();" name="enregistrementClasse" method="" action="">
                    <div class="row">
                        <div class="input-field col s6">
                            <i class="material-icons prefix">home</i>
                            <input id="ecole" type="text" required="required">
                            <label for="ecole">Ecole</label>
                        </div>
                        <div class="input-field col s6">
                            <select id="nombreFiliere" class="browser-default" style="position: relative; width: 91%; margin-left: 9.5%;" required="required">
                                <option disabled selected>Choix du nombre de filières dans cette école</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">...</option>
                            </select>
                        </div>
                        <div class="input-field col s6">
                            <i class="material-icons prefix">school</i>
                            <input id="filiere" type="text" required="required" disabled="=disabled">
                            <label for="filiere">Filière</label>
                        </div>
                        <div class="input-field col s6">
                            <select id="nombreClasse" class="browser-default" style="position: relative; width: 91%; margin-left: 9.5%;" required="required" disabled="=disabled">
                                <option value="" disabled selected>Choix du nombre de classes dans cette filière</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">...</option>
                            </select>
                        </div>
                        <div class="input-field col s6">
                            <i class="material-icons prefix">work</i>
                            <input id="classe" type="text" required="required" disabled="=disabled">
                            <label for="classe">Classe</label>
                        </div>
                        <div class="input-field col s6">
                            <select id="nombreMatiere" class="browser-default" style="position: relative; width: 91%; margin-left: 9.5%;" required="required" disabled="=disabled">
                                <option value="" disabled selected>Choix du nombre de matières dans cette classe</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">...</option>
                            </select>
                        </div>
                        <div class="input-field col s6">
                            <i class="material-icons prefix">book</i>
                            <input id="matiere" type="text" required="required" disabled="=disabled">
                            <label for="matiere">Matiere</label>
                        </div>
                        <div class="input-field col s12">
                            <p style="text-align: center; font-family: Verdana; font-size: 1.2em;">(Exemple de saisie pour le syllabus) I - le titre : le nombre d'heure ; Ainsi de suite ;</p>
                        </div>
                        <div class="input-field col s12">
                            <i class="material-icons prefix">book</i>
                            <textarea class="materialize-textarea" id="syllabus" type="text" disabled="disabled" required="required"></textarea>
                            <label for="syllabus">Syllabus</label>
                        </div>
                    </div>
                    <button class="btn btn-large" type="submit" style="position: relative; margin-left: 83%; background: #00E676;">Enregistrer</button>
                </form>
            </div>
            <br><br>
        </div>
        
        <!-- Javascript -->
        <!-- Début -->
        <script>
            M.AutoInit();
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
            matiere.addEventListener("blur", verifieMatiere, true); --%>
            
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
            
            <%-- function enregistrementUser() {
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
        <!-- Fin -->
        
        <!-- Importation du fichier footer.jsp  -->
        <jsp:include page="footer.jsp"></jsp:include>
        
        <!-- Importation du fichier body.jsp  -->
        <jsp:include page="body.jsp"></jsp:include>
      
    </body>
    
</html>
