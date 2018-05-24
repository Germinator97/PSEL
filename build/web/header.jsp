<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- Importation des fichiers de materialize -->
<!-- Début -->
<link type="text/css" rel="stylesheet" href="Materialize/css/materialize.min.css"  media="screen,projection"/>
<link type="text/css" rel="stylesheet" href="Materialize/css/materialize.css"  media="screen,projection"/>
<!-- Fin -->

<!-- Navbar -->
<!-- Début -->
<div class="navbar-fixed">
    <nav style="background: #00E676;">
        <div class="nav-wrapper">
            <a href="index.jsp" class="brand-logo">PSEL<i class="material-icons prefix">school</i></a>
            <ul class="right hide-on-med-and-down">
                <li><a href="index.jsp" style="font-family: verdana; font-size: 1.3em;"><i class="material-icons prefix left">home</i>Acceuil</a></li>
                <li>
                    <a class='dropdown-trigger' data-target='dropdown' style="font-family: verdana; font-size: 1.3em;"><i class="material-icons prefix left">book</i>Progression</a>
                    <ul id='dropdown' class='dropdown-content'>
                      <li><a class="modal-trigger" href="#connexionChef"><i class="material-icons">book</i>Chef</a></li>
                      <li><a class="modal-trigger" href="#connexionProfesseur"><i class="material-icons">book</i>Professeur</a></li>
                    </ul>
                </li>
                <li><a class="modal-trigger" href="#connexionEnregistrement" style="font-family: verdana; font-size: 1.3em;"><i class="material-icons prefix left">edit</i>Enregistrement</a></li>
                <li><a class="modal-trigger" href="#connexionUtilisateur" style="font-family: verdana; font-size: 1.3em;"><i class="material-icons prefix left">person</i>Utilisateurs</a></li>
            </ul>
        </div>
    </nav>
</div>
<!-- Fin -->

<!-- Connexion -->
<!-- Début -->
<div id="connexionEnregistrement" class="modal">
    <div class="modal-content">
        <form class="col s12" onsubmit="return validationEnregistrement();" name="validationEnregistrement" method="" action="">
            <div class="row">
                <div class="input-field col s12">
                    <i class="material-icons prefix">account_circle</i>
                    <input id="usernameEnregistrement" type="text" required="required">
                    <label for="usernameEnregistrement">Utilisateur</label>
                </div>  
                <div class="input-field col s12">
                    <i class="material-icons prefix">vpn_key</i>
                    <input id="passwordEnregistrement" type="password" required="required">
                    <label for="passwordEnregistrement">Mot de passe</label>
                </div>
            </div>
            <a class="btn btn-large" href="enregistrement.jsp" type="submit" style="position: relative; margin-left: 83%; background: #00E676;">Valider</a>
        </form>
    </div>
</div>
<div id="connexionUtilisateur" class="modal">
    <div class="modal-content">
        <form class="col s12" onsubmit="return validationUtilisateur();" name="validationUtilisateur" method="" action="">
            <div class="row">
                <div class="input-field col s12">
                    <i class="material-icons prefix">account_circle</i>
                    <input id="usernameUtilisateur" type="text" required="required">
                    <label for="usernameUtilisateur">Utilisateur</label>
                </div>  
                <div class="input-field col s12">
                    <i class="material-icons prefix">vpn_key</i>
                    <input id="passwordUtilisateur" type="password" required="required">
                    <label for="passwordUtilisateur">Mot de passe</label>
                </div>
            </div>
            <a class="btn btn-large" href="utilisateurs.jsp" type="submit" style="position: relative; margin-left: 83%; background: #00E676;">Valider</a>
        </form>
    </div>
</div>
<div id="connexionChef" class="modal">
    <div class="modal-content">
        <form class="col s12" onsubmit="return validationChef();" name="validationChef" method="" action="">
            <div class="row">
                <div class="input-field col s12">
                    <i class="material-icons prefix">account_circle</i>
                    <input id="usernameChef" type="text" required="required">
                    <label for="usernameChef">Utilisateur</label>
                </div>  
                <div class="input-field col s12">
                    <i class="material-icons prefix">vpn_key</i>
                    <input id="passwordChef" type="password" required="required">
                    <label for="passwordChef">Mot de passe</label>
                </div>
            </div>
            <a class="btn btn-large" href="chef.jsp" type="submit" style="position: relative; margin-left: 83%; background: #00E676;">Valider</a>
        </form>
    </div>
</div>
<div id="connexionProfesseur" class="modal">
    <div class="modal-content">
        <form class="col s12" onsubmit="return validationProfesseur();" name="validationProfesseur" method="" action="">
            <div class="row">
                <div class="input-field col s12">
                    <i class="material-icons prefix">account_circle</i>
                    <input id="usernameProfesseur" type="text" required="required">
                    <label for="usernameProfesseur">Utilisateur</label>
                </div>  
                <div class="input-field col s12">
                    <i class="material-icons prefix">vpn_key</i>
                    <input id="passwordProfesseur" type="password" required="required">
                    <label for="passwordProfesseur">Mot de passe</label>
                </div>
            </div>
            <a class="btn btn-large" href="professeur.jsp" type="submit" style="position: relative; margin-left: 83%; background: #00E676;">Valider</a>
        </form>
    </div>
</div>
<!-- Fin -->

<!-- Javascript -->
<!-- Début -->
<script>
    function validationEnregistrement() {
        
    }
    
    function validationUtilisateur() {
        
    }
    
    function validationChef() {
        
    }
    
    function validationProfesseur() {
        
    }
</script>

<!-- Si l'utilisateur clique sur autre chose que le modal, garder le modal en vue -->
<script>
    var modal = document.getElementById('connexionEnregistrement');
    windows.onclick = function(event) {
        if(event.target === modal) {
            
        }
    }
</script>

<script>
    M.AutoInit();
</script>
<!-- Fin -->

<jsp:include page="body.jsp"></jsp:include>