<%-- 
    Document   : loginChef
    Created on : 26 mai 2018, 13:31:39
    Author     : germinator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix = "sql" uri = "http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix = "x" uri = "http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<%@page session="true" %>
<!DOCTYPE html>

<html>
    
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
        <link href="login.css" rel="stylesheet" type="text/css">
    
    </head>
    
    <body style="background-image: url('Images/inp-hb sud 07.jpg')">
    
        <div class="logo">PSEL</div>
        <form class="login-block" onsubmit="return validate();" method="post" id="connexion" name="connexion" action="loginChef">
            <h1>Login</h1>
            <input type="text" placeholder="Nom d'utilisateur" id="username" name="username" autofocus />
            <input type="password" placeholder="Mot de passe" id="password" name="password" />
            <button type="submit" name="valider">Valider</button>
        </form>
        <%--
        
        <%
            if(request.getParameter("valider")!=null) {
                String user = request.getParameter("username");
                pageContext.setAttribute("user", new String(user));
                String pwd = request.getParameter("password");
                pageContext.setAttribute("pwd", new String(pwd));
            }
        
        %>

        <sql:setDataSource var = "lecture" driver = "com.mysql.jdbc.Driver" url = "jdbc:mysql://localhost:3309/db" user = "root"  password = ""/>
        
        <sql:query dataSource = "${lecture}" var = "comptes">
           SELECT * FROM compte ORDER BY username DESC;
        </sql:query>
        <c:set var="i" value="${0}" />
        <c:set var="niveau" value="Elève" />
        <c:forEach var="compte" begin="0" items="${comptes.rows}">
            <c:choose>
                <c:when test="${user eq compte.username and pwd eq compte.password and compte.statut eq niveau}">
                    <c:redirect url="chef.jsp" />
                </c:when>
                <c:otherwise>
                    <c:redirect url="loginchef.jsp" />
                </c:otherwise>
            </c:choose>
        </c:forEach>
        --%>
        
        
        <script>
            <%
            
                HttpSession hs = request.getSession();
                String id;
                if (request.getAttribute("id")!=null) {
                    id = (String)request.getAttribute("id");
                    if (id != null) {
                        response.sendRedirect("chef.jsp");
                    }
                    else {
                        getServletContext().getRequestDispatcher("loginChef.jsp").forward(request, response);
                    }
                }

            %>
            function validate() {
                
                var link = document.getElementById("connexion");
                
                var user = document.connexion.username.value;
                
                if (user === "") {
                    alert("Veuillez entrer votre nom d'utilisateur");
                    document.connexion.username.focus();
                    return false;
                }
                
                var pwd = document.connexion.password.value;
                var ilegal = /[\W_]/;
                
                if (pwd === "") {
                    alert("Veuillez entrer votre mot de passe");
                    document.connexion.password.focus();
                    return false;
                }
                
                else if (ilegal.test(pwd)) {
                    alert("Votre mot de passe contient des caractères non autorisés");
                    document.connexion.password.focus();
                    return false;
                }
            }
        </script>
        
    </body>
    
</html>