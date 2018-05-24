<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- Importation des fichiers de materialize -->
<!-- Début -->
<link type="text/css" rel="stylesheet" href="Materialize/css/materialize.min.css"  media="screen,projection"/>
<link type="text/css" rel="stylesheet" href="Materialize/css/materialize.css"  media="screen,projection"/>
<!-- Fin -->

<!-- Pieds de page -->
<!-- Début -->
<footer class="page-footer" style="background: #00E676;">
    <div class="container">
        <div class="row">
            <div class="col l6 s12">
                <h4 class="white-text"><i class="material-icons prefix">school</i>  PSEL</h4>
                <p class="grey-text text-lighten-4">Mon texte.</p>
            </div>
            <div class="col l4 offset-l2 s12">
                <h5 class="white-text">Menu</h5>
                <ul>
                    <li><a class="grey-text text-lighten-3" href="index.jsp">Progression</a></li>
                    <li><a class="grey-text text-lighten-3" onclick="user();" href="enregistrement.jsp">Enregistrement</a></li>
                    <li><a class="grey-text text-lighten-3" onclick="user();" href="utilisateurs.jsp">Utilisateurs</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="footer-copyright">
        <div class="container" style="text-align: center;">
            © 2018 Copyright - Tous droits réservés 
        </div>
    </div>
</footer>
<!-- Fin -->

<!-- Javascript -->
<!-- Début -->
<script>
    function user() {
        var username = prompt("Veuillez saisir votre username :");
        var password = prompt("Veuillez saisir votre mot de passe :");
        if ((username === "admin") && (password === "admin") ) {
            alert('Merci ' + username + ', vous êtes maintenant connecté !');
        }
        else {
            alert('Erreur dans les entrées !');
        }
    }
</script>

<script>
    M.AutoInit();
</script>
<!-- Fin -->

<jsp:include page="body.jsp"></jsp:include>