<%--
  Created by IntelliJ IDEA.
  User: tais
  Date: 21/07/2021
  Time: 14:58
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:template title="Cadastrar Endereço">
    <jsp:body>
        <h1 class="font-weight-bold text-center mt-5">CADASTRAR ENDEREÇO</h1>

        <div class="card mt-5" style="background-color: #d5e8e4">
            <form class="p-5" name="frmCEP" action="cadastrar-endereco" method="post">
                <fieldset class="scheduler-border">
                    <legend class="scheduler-border">Endereço</legend>

                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="cep">CEP</label>
                            <input type="text" id="cep" class="form-control" name="CEP" maxlength="8" onkeyup="PesquisarCEP(document.frmCEP.CEP.value);">

                        </div>
                        <div class="form-group col-md-2">
                            <input type="hidden" id="id_contact" class="form-control" name="id_contact" value="${contact.id}">
                            <input type="hidden" id="name_contact" class="form-control" name="name_contact" value="${contact.name}">
                            <input type="hidden" id="phone_contact" class="form-control" name="phone_contact" value="${contact.phone}">
                            <input type="hidden" id="email_contact" class="form-control" name="email_contact" value="${contact.email}">
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="road">Rua</label>
                            <input type="text" class="form-control" id="road" name="road"  placeholder="Rua">
                        </div>
                        <div class="form-group col-md-2">
                            <label for="number">Numero</label>
                            <input type="text" class="form-control" id="number" name="number"  placeholder="Numero">
                        </div>
                        <div class="form-group col-md-4">
                            <label for="neighborhood">Bairro</label>
                            <input type="text" class="form-control" id="neighborhood" name="neighborhood"  placeholder="Bairro">
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="city">Cidade</label>
                            <input type="text" class="form-control" id="city" name="city"  placeholder="Cidade">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="state">Estado</label>
                            <input type="text" class="form-control" id="state" name="state"  placeholder="Estado">
                        </div>
                    </div>


                </fieldset>

                <div class="form-check form-check-inline mt-3">
                    <a href="cadastrar-contato" class="btn btn-warning">Voltar</a>
                </div>
                <div class="form-check form-check-inline float-right mt-3">
                    <button class="btn btn-success">Cadastrar</button>
                </div>

            </form>
        </div>

        <script>
            window.onload =  function () {
                $(document).ready(function () {
                    $("#cep").mask("99.999-999");
                });
            }

            function PesquisarCEP(cep_informado){
                var resultado;
                $.ajax({ type: "GET", url: "http://cep.republicavirtual.com.br/web_cep.php?cep=" + cep_informado + "&formato=json",
                    dataType:"json",
                    error: function() {
                        alert('Houve um problema de comunicacao');
                    }
                }).done(function(dados) {
                    var resultado = "";  resultado += "CEP informado:" + cep_informado + "<br>"; resultado += "Resultado:" + dados.resultado_txt + "<br>"; resultado += "Estado:" + dados.uf + "<br>"; resultado += "Cidade:" + dados.cidade + "<br>"; resultado += "Bairro:" + dados.bairro + "<br>"; resultado += "Tipo Logradouro:" + dados.tipo_logradouro + "<br>"; resultado += "Logradouro:" + dados.logradouro + "<br>";
                    $("#road").val(dados.logradouro);
                    $("#neighborhood").val(dados.bairro);
                    $("#city").val(dados.cidade);
                    $("#state").val(dados.uf);
                });
                //persiste no localstorage do cep
                $('#cep').change(function (){

                    var cep = $('#cep').val();
                    localStorage.setItem('cep', cep);
                });
            }
        </script>

    </jsp:body>
</t:template>