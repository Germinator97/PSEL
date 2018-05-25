<%-- 
    Document   : chef
    Created on : 24 mai 2018, 21:35:25
    Author     : germinator
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
        <div id="chefs" class="col s12 center">
            <div class="row" style="position: relative; width: 50%; margin-left: 25%;">
                <form class="col s12" onsubmit="return recherche();" name="recherche" method="" action="">
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
            <br><br>
        </div>
        
        <!-- Javascript -->
        <!-- Début -->
        <script>
            function recherche() {
                
            }
            
            
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