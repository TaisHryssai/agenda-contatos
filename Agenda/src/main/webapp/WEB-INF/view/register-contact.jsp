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
        <div class="form-group">
          <label for="name">Nome</label>
          <input type="text" class="form-control" id="name" name="name"  placeholder="Nome">
        </div>

        <div class="form-row">
          <div class="form-group col-md-4">
            <label for="state">Estados</label>
            <select id="state" class="form-control">
              <option value="" disabled selected>Selecione o Estado</option>
            </select>
          </div>
          <div class="form-group col-md-4">
            <label for="ddd">DDD</label>
            <select id="ddd" class="form-control">
              <option value="" disabled selected>Selecione o DDD</option>
            </select>
          </div>
          <div class="form-group col-md-4">
            <label for="phone">Telefone</label>
            <input type="text" class="form-control" id="phone" name="phone" placeholder="Telefone">
          </div>
        </div>

        <div class="form-group">
          <label for="email">Email</label>
          <input type="email" class="form-control" id="email" name="email" placeholder="Email">
        </div>
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

          var cellAndLandMaskBehavior = function (val) {
                    return val.replace(/\D/g, '').length === 11 ? ' 00000-0000' : ' 0000-00009';
                  },

                  options = {
                    onKeyPress: function (val, e, field, options) {
                      field.mask(cellAndLandMaskBehavior.apply({}, arguments), options);
                    }
                  };

          $("#phone").mask(cellAndLandMaskBehavior, options);
        });

      //  listar estados
        $.get('states', function (data){
          let $select = $('#state');

          $.each(data, function(index, item) {
            $('<option>').val(index).text(item).appendTo($select);
          });
        });

        //evento de seleção de estado no select
        $('#state').change(function (){
          //parâmetro a ser enviado
          let params = {
            estado: $(this).find(':selected').text()
          }
          //armazenamento no localstorage
          localStorage.setItem('state', params.estado);

          //busca dos ddds por estado
          $.get('ddd', $.param(params), function (data){
            let $select = $('#ddd');
            $select.html('');
            $.each(data, function(index, item) {
              $('<option>').val(index).text(item).appendTo($select);
            });
          })
        });
        //persiste no localstorage a cidade selecionadda
        $('#ddd').change(function (){
          localStorage['ddd'] = $(this).find(':selected').text();
        });

      }

    </script>

  </jsp:body>
</t:template>