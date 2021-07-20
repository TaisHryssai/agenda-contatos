<%--
  Created by IntelliJ IDEA.
  User: tais
  Date: 20/07/2021
  Time: 10:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<t:template title="Contatos">
    <jsp:body>

        ${contacts}


        <h1>Lista de contatos</h1>

        <c:if test="${not empty contacts}">
            <ul>
                <c:forEach var="contact" items="${contacts}">
                    <li>${contact.name} - ${contact.phone} - ${contact.email}</li>
                </c:forEach>
            </ul>
        </c:if>

<c:if test="${empty contacts}">
    Nao há contatos na lista
</c:if>


    </jsp:body>
</t:template>