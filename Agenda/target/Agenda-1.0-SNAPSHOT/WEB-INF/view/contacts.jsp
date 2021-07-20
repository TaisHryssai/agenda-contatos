<%--
  Created by IntelliJ IDEA.
  User: tais
  Date: 15/07/2021
  Time: 21:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:template title="Contatos">
    <jsp:body>

        <h1 class="font-weight-bold text-center mt-3">CONTATOS</h1>
<%--        <table class="table table-contatos" style="background-color: #d5e8e4">--%>
<%--            <thead class="thead-dark text-center">--%>
<%--            <tr>--%>
<%--                <th scope="col">NOME</th>--%>
<%--                <th scope="col">TELEFONE</th>--%>
<%--                <th scope="col">EMAIL</th>--%>
<%--            </tr>--%>
<%--            </thead>--%>
<%--            <tbody>--%>
<%--                <c:if test="${not empty contacts}">--%>
<%--                        <c:forEach var="contact" items="${contacts}">--%>
<%--                            <tr>--%>
<%--                                <td>${contact.name}</td>--%>
<%--                                <td>${contact.phone}</td>--%>
<%--                                <td>${contact.email}</td>--%>
<%--                            </tr>--%>
<%--                        </c:forEach>--%>
<%--                </c:if>--%>
<%--                <c:if test="${empty contacts}">--%>
<%--                    Não há usuários na lista--%>
<%--                </c:if>--%>

<%--            </tbody>--%>
<%--        </table>--%>

        <c:if test="${not empty contacts}">
            <ul>
                <c:forEach var="user" items="${contacts}">
                    <li>${user.name} - ${user.email}</li>
                </c:forEach>
            </ul>
        </c:if>
        <c:if test="${empty contacts}">
            Não há usuários na lista
        </c:if>
        <a href="hello-servlet">Alô Mundo!</a>



    </jsp:body>
</t:template>