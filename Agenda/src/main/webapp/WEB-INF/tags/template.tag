<%--
  Created by IntelliJ IDEA.
  User: tais
  Date: 11/07/2021
  Time: 22:15
  To change this template use File | Settings | File Templates.
--%>
<%@tag description="Template principal" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- The list of normal or fragment attributes can be specified here: --%>
<%@attribute name="title"%>
<html>
<head>
    <title>${title}</title></head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="icon" type="image/png" href="assets/resources/images/agenda.png" />
    <!--Icons-->
    <script src="https://kit.fontawesome.com/826671e166.js" crossorigin="anonymous"></script>
    <!-- CSS -->
    <link rel="stylesheet" href="assets/libraries/bootstrap-4.0.0/css/bootstrap.css"></link>
    <link rel="stylesheet" href="assets/resources/styles/template.css">
    <link rel="stylesheet" href="assets/resources/styles/main.css">

<body>

<header>
    <div class="navbar-fixed" style="z-index: 999">
        <nav class="navbar navbar-expand-lg navbar-light">
            <a class="navbar-brand" href="#"><img src="assets/resources/images/agenda.png" alt="" class="logo-navbar"></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">AGENDA DE CONTATOS <span class="sr-only">(current)</span></a>
                    </li>
                </ul>
                <a class="btn btn-info border border-dark button-register text-light" href="cadastrar-contato">Cadastrar Contato</a>

            </div>
        </nav>
    </div>
</header>
<main id="content" class="container">
    <jsp:doBody></jsp:doBody>
</main>

<!-- rodape-->
<footer class="page-footer font-small special-color-dark pt-4" style="background-color: #9cc9c1">
    <div class="container">
        <ul class="list-unstyled list-inline text-center">
            <li class="list-inline-item">
                <a class="btn-floating btn-li mx-1 text-dark" href="https://www.linkedin.com/in/tais-michele-hryssai-da-luz-2a750310a/">
                    <i class="fab fa-linkedin-in"> </i>
                </a>
            </li>
            <li class="list-inline-item">
                <a class="btn-floating btn-github mx-1 text-dark" href="https://github.com/TaisHryssai">
                    <i class="fab fa-github"> </i>
                </a>
            </li>
        </ul>
    </div>
    <!-- Copyright -->
    <div class="footer-copyright text-center py-3">© 2021 Copyright:
        <a href="#" class="text-dark"> Tais Michele Hryssai da Luz</a>
    </div>
    <!-- Copyright -->
</footer>

<script src="assets/libraries/jquery/jquery-3.6.0.min.js"></script>

<script src="assets/libraries/jquery.mask.min.js"></script>
<script src="assets/libraries/bootstrap-4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
