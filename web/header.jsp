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
                <li><a href="index.jsp" style="font-family: verdana; font-size: 1.3em;"><i class="material-icons prefix left">book</i>Progression</a></li>
                <li><a href="enregistrement.jsp" onclick="user();" style="font-family: verdana; font-size: 1.3em;"><i class="material-icons prefix left">edit</i>Enregistrement</a></li>
                <li><a href="utilisateurs.jsp" onclick="user();" style="font-family: verdana; font-size: 1.3em;"><i class="material-icons prefix left">person</i>Utilisateurs</a></li>
            </ul>
        </div>
    </nav>
</div>
<!-- Fin -->

<!-- Javascript -->
<!-- Début -->
<script>
    function user() {
        var user = prompt("Veuillez saisir votre username :");
        var pwd = prompt("Veuillez saisir votre mot de passe :");
        if ((user !== "") && (pwd !== "") ) {
            alert('Merci ' + user + ', vous êtes maintenant connecté !');
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