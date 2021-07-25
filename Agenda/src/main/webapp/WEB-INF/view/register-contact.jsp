<%--
  Created by IntelliJ IDEA.
  User: tais
  Date: 20/07/2021
  Time: 10:09
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:template title="Cadastrar Contato">
  <jsp:body>
    <h1 class="font-weight-bold text-center mt-5">CADASTRAR NOVO CONTATO</h1>

    <div class="card mt-5" style="background-color: #d5e8e4">
      <form class="p-5" action="cadastrar-contato" method="post">
        <fieldset class="scheduler-border">
          <legend class="scheduler-border">Contato</legend>

        <div class="form-group">
          <label for="name">Nome</label>
          <input type="text" class="form-control" id="name" name="name"  placeholder="Nome" autofocus>
        </div>

          <div class="form-group">
            <label for="phone">Telefone</label>
            <input type="text" class="form-control" id="phone" name="phone" placeholder="Telefone">
          </div>

        <div class="form-group">
          <label for="email">Email</label>
          <input type="email" class="form-control" id="email" name="email" placeholder="Email">
        </div>
      </fieldset>

        <div class="form-check form-check-inline mt-3">
          <a href="lista-contatos" class="btn btn-warning">Voltar</a>
        </div>
        <div class="form-check form-check-inline float-right mt-3">
          <button class="btn btn-success">Cadastrar</button>
        </div>

      </form>
    </div>

    <script>
      window.onload =  function () {
        $(document).ready(function () {
        // formatação telefone
          var cellAndLandMaskBehavior = function (val) {
                    return val.replace(/\D/g, '').length === 11 ? '(00) 00000-0000' : '(00) 0000-00009';
                  },
                  options = {
                    onKeyPress: function (val, e, field, options) {
                      field.mask(cellAndLandMaskBehavior.apply({}, arguments), options);
                    }
                  };
          $("#phone").mask(cellAndLandMaskBehavior, options);
        });
      }

    </script>

  </jsp:body>
</t:template>