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
            <li class="tab"><a class="active" href="#tous">Tous</a></li>
            <li class="tab"><a onclick="user();" href="#chefs">Chefs de classes</a></li>
            <li class="tab"><a onclick="user();" href="#professeurs">Professeurs</a></li>
        </ul>            
        <div id="chefs" class="col s12 center">
            <div class="row" style="position: relative; width: 50%; margin-left: 25%;">
                <form class="col s12" onsubmit="return rechercheChef();" name="recherchechef" method="" action="">
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
                    <div class="collapsible-header"><i class="material-icons">book</i>Matière</div>
                    <div class="collapsible-body">
                        <ul class="collection" style="position: relative; width: 90%; margin-left: 5%;">
                            <li class="collection-item avatar">
                                <p>Ajouter un contenu qui montrera le syllabus sous forme de formulaire.</p>
                                <br>
                                <form class="col s12" onsubmit="return progressionChef();" name="progressionChef" method="" action="">
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
            <br><br>
        </div>
        <div id="professeurs" class="col s12 center">
            <div class="row" style="position: relative; width: 50%; margin-left: 25%;">
                <form class="col s12" onsubmit="return rechercheProfesseur();" name="rechercheProfesseur" method="" action="">
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
            <ul class="collapsible" style="position: relative; width: 90%; margin-left: 5%;">
                <li>
                    <div class="collapsible-header"><i class="material-icons">work</i>Classe</div>
                    <div class="collapsible-body">
                        <ul class="collection" style="position: relative; width: 90%; margin-left: 5%;">
                            <li class="collection-item avatar">
                                <ul class="collapsible">
                                    <li>
                                       <div class="collapsible-header"><i class="material-icons">book</i>Matière</div>
                                       <div class="collapsible-body">
                                           <ul class="collection">
                                               <li class="collection-item avatar">
                                                    <p>Ajouter un contenu qui montrera le syllabus sous forme de formulaire.</p>
                                                    <br>
                                                    <form class="col s12" onsubmit="return progressionProfesseur();" name="progressionProfesseur" method="" action="">
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
                            </li>
                        </ul>
                    </div>
                </li>
            </ul>
            <br><br>
        </div>
        <div id="tous" class="col s12 center">
            <div class="row" style="position: relative; width: 50%; margin-left: 25%;">
                <form class="col s12" onsubmit="return rechercheTous();" name="rechercheTous" method="" action="">
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
            <ul class="collapsible" style="position: relative; width: 90%; margin-left: 5%;">
                <li>
                    <div class="collapsible-header"><i class="material-icons">work</i>Classe</div>
                    <div class="collapsible-body">
                        <ul class="collection" style="position: relative; width: 90%; margin-left: 5%;">
                            <li class="collection-item avatar">
                                <ul class="collapsible">
                                    <li>
                                       <div class="collapsible-header"><i class="material-icons">book</i>Matière</div>
                                       <div class="collapsible-body">
                                           <ul class="collection">
                                               <li class="collection-item avatar">
                                                    <p>Ajouter un contenu qui montrera le syllabus sous forme de formulaire.</p>
                                                    <br>
                                                    <form class="col s12" onsubmit="return progressionTous();" name="progressionTous" method="" action="">
                                                        <div class="row">
                                                            <p>
                                                                <label>
                                                                    <input type="checkbox" class="filled-in" disabled="disabled"/>
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
                            </li>
                        </ul>
                    </div>
                </li>
            </ul>
            <br><br>
        </div>
        
        <!-- Javascript -->
        <!-- Début -->
        <script>
            function user() {
                var username = prompt("Veuillez saisir votre username :");
                var password = prompt("Veuillez saisir votre mot de passe :");
                if ((username !== "") && (password !== "") ) {
                    alert('Merci ' + username + ', vous êtes maintenant connecté !');
                }
                else {
                    alert('Erreur dans les entrées !');
                }
            }
            
            function rechercheTous() {
                
            }
            
            function rechercheProfesseur() {
                
            }
            
            function rechercheChef() {
                
            }
            
            function progressionChef() {
                
            }
            
            function progressionProfesseur() {
                
            }
            
            function progressionTous() {
                
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