<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- Importation des fichiers de materialize -->
<!-- Début -->
<link type="text/css" rel="stylesheet" href="Materialize/css/materialize.min.css"  media="screen,projection"/>
<link type="text/css" rel="stylesheet" href="Materialize/css/materialize.css"  media="screen,projection"/>
<!-- Fin -->

<!-- Navbar -->
<!-- Début -->
<div class="navbar-fixed">
<<<<<<< HEAD
    <nav style="background: #9F9F9F;">
        <div class="nav-wrapper">
            <a href="modele.jsp" class="brand-logo">PSEL<i class="material-icons prefix">school</i></a>
            <ul class="right hide-on-med-and-down">
                <li><a href="index.jsp" style="font-family: verdana; font-size: 1.3em;"><i class="material-icons prefix left">home</i>Accueil</a></li>
                <li>
                    <a class='dropdown-trigger' data-target='dropdown' style="font-family: verdana; font-size: 1.3em;"><i class="material-icons prefix left">book</i>Progressions</a>
                    <ul id='dropdown' class='dropdown-content'>
                      <li><a class="modal-trigger" href="loginChef.jsp"><i class="material-icons">book</i>Chef</a></li>
                      <li><a class="modal-trigger" href="loginProfesseur.jsp"><i class="material-icons">book</i>Professeur</a></li>
                      <li><a class="modal-trigger" href="loginDirection.jsp"><i class="material-icons">book</i>Direction</a></li>
                    </ul>
                </li>
                <li><a href="loginEnregistrement.jsp" style="font-family: verdana; font-size: 1.3em;"><i class="material-icons prefix left">edit</i>Enregistrements</a></li>
=======
    <nav style="background: #00E676;">
        <div class="nav-wrapper">
            <a href="modele.jsp" class="brand-logo">PSEL<i class="material-icons prefix">school</i></a>
            <ul class="right hide-on-med-and-down">
                <li><a href="index.jsp" style="font-family: verdana; font-size: 1.3em;"><i class="material-icons prefix left">home</i>Acceuil</a></li>
                <li>
                    <a class='dropdown-trigger' data-target='dropdown' style="font-family: verdana; font-size: 1.3em;"><i class="material-icons prefix left">book</i>Progression</a>
                    <ul id='dropdown' class='dropdown-content'>
                      <li><a class="modal-trigger" href="loginChef.jsp"><i class="material-icons">book</i>Chef</a></li>
                      <li><a class="modal-trigger" href="loginProfesseur.jsp"><i class="material-icons">book</i>Professeur</a></li>
                    </ul>
                </li>
                <li><a href="loginDirection.jsp" style="font-family: verdana; font-size: 1.3em;"><i class="material-icons prefix left">edit</i>Enregistrement</a></li>
>>>>>>> 538f6fc28656e3f80e9c05b9b9cd5ecbdc2b6b30
                <li><a href="login.jsp" style="font-family: verdana; font-size: 1.3em;"><i class="material-icons prefix left">person</i>Utilisateurs</a></li>
            </ul>
        </div>
    </nav>
</div>
<!-- Fin -->




<!-- Javascript -->
<!-- Début -->
<script>
    M.AutoInit();
</script>
<!-- Fin -->

<jsp:include page="body.jsp"></jsp:include>