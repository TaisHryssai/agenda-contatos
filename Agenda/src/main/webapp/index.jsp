<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:template title="Agenda de Contatos">
    <jsp:body>
        <a href="list-contact"> <img class="mt-5 rounded mx-auto d-block img-fluid" src="assets/resources/images/agenda-contatos.png" alt="Card image cap"> </a>

<%--        <a href="hello-servlet">Alô Mundo!</a>--%>
        <a href="list-contact">teste</a>

        <table class="table table-contatos" style="background-color: #d5e8e4">
            <thead class="thead-dark text-center">
            <tr>
                <th scope="col">NOME</th>
                <th scope="col">TELEFONE</th>
                <th scope="col">EMAIL</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td class="tabela">Mark</td>
                <td class="tabela">(42)123456789</td>
                <td class="tabela">algo@algo.com</td>
            </tr>
            <tr>
                <td>Jacob</td>
                <td>(42)123456789</td>
                <td>algo@algo.com</td>
            </tr>
            </tbody>
        </table>
    </jsp:body>
</t:template>