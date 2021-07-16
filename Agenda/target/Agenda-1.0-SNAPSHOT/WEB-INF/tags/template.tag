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

    <!-- CSS -->
    <link rel="stylesheet" href="assets/libraries/bootstrap-4.0.0/css/bootstrap.css"></link>
    <link rel="stylesheet" href="assets/resources/styles/template.css">

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
                <a class="btn btn-info border border-dark button-register text-light" href="register-contact">Cadastrar Contato</a>

            </div>
        </nav>
    </div>
</header>
<main id="content" class="container">
    <jsp:doBody></jsp:doBody>
</main>

<!-- rodape-->


<script src="assets/libraries/jquery/jquery-3.6.0.min.js"></script>

<script src="assets/libraries/jquery.mask.min.js"></script>
<script src="assets/libraries/bootstrap-4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
