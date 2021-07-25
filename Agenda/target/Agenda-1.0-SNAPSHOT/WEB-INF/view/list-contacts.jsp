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
        <h1 class="text-center font-weight-bold mt-5">Lista de contatos</h1>

<c:if test="${empty contacts}">
    Nao há contatos na lista
</c:if>
<div class="table-responsive">
        <table class="table" style="background-color: #d5e8e4">
            <thead class="thead-dark text-center">
            <tr>
                <th>NOME</th>
                <th>TELEFONE</th>
                <th>EMAIL</th>
                <th>ENDEREÇO</th>
                <th></th>
            </tr>
            </thead>
            <tbody>
            <c:if test="${not empty contacts}">
            <c:forEach var="address" items="${adds}">
                <tr>
                    <td>${address.contact.name}</td>
                    <td>${address.contact.phone}</td>
                    <td>${address.contact.email}</td>
                    <td>${address.road}/${address.number} - ${address.city}, ${address.state}</td>
                    <td></td>
                </tr>
            </c:forEach>
            </c:if>
            </tbody>
        </table>
</div>
    </jsp:body>
</t:template>