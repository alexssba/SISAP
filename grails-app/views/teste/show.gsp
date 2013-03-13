
<%@ page import="sisap.Teste" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'teste.label', default: 'Teste')}" />
    <title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
<div class="wrapper">

    <div class="content" id="container">
        <div class="title"><h5><g:message code="default.show.label" args="[entityName]" /></h5></div>
        <div class="breadCrumbHolder module">
            <div class="breadCrumb module">
                <ul>
                    <li class="firstB"><a href="#">Home</a> </li>
                    <li><g:link action="index"> <g:message code="default.list.label" args="[entityName]" /></g:link></li>
                    <li><g:link action="show" id="${testeInstance.id}"> <g:message code="default.show.label" args="[entityName]" /></g:link></li>
                </ul>
            </div>
        </div>
        <g:hasErrors bean="${testeInstance}">
            <div class="pt20">
                <ul class="errors" role="alert">
                    <g:eachError bean="${testeInstance}" var="error">
                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>>
                            <div class="nNote nFailure hideit">
                                <p><strong>Erro: </strong><g:message error="${error}"/></p>
                            </div>

                        </li>
                    </g:eachError>
                </ul>
            </div>
        </g:hasErrors>
        <g:if test="${flash.message}">
            <div class="pt20">
                <div class="nNote nSuccess hideit">
                    <p><strong>Sucesso: </strong>${flash.message}</p>
                </div>
            </div>
        </g:if>
        <div class="middleNav">
            <g:form method="POST" >
                <g:hiddenField name="id" value="${testeInstance}" />
                <ul>
                    <li class="iEdit"><g:link id="${testeInstance.id}" action="edit"><span><g:message code="default.edit.label" args="[entityName]" /></span></g:link> </li>
                    <li class="iDelete"><g:link  onclick="if(!(jConfirm('Tem certeza que deseja excluir este(a) ${message(code: 'teste.label', default: 'Teste')}?', 'Confirmação')))return false;"><span><g:message code="default.button.delete.label" args="[entityName]" /></span></g:link></li>
                </ul>
            </g:form>
        </div>
        <div class="fix"></div>
        <div class="mainForm">
            <fieldset>
                <div class="widget first">
                    <div class="head"><h5 class="iList">Dados do teste</h5></div>
                    
                    <g:if test="${testeInstance?.descricao}">
                        <div class="rowElem"><label><span id="descricao-label" class="property-label"><g:message code="teste.descricao.label" default="Descricao" /></span>:</label>
                            <div class="formRight">
                                
                                <span class="property-value" aria-labelledby="descricao-label"><g:textField readonly="readonly" name="${testeInstance}" value="${testeInstance.descricao}" /></span>
                                
                            </div><div class="fix"></div></div>
                    </g:if>
                    
                    <g:if test="${testeInstance?.usuario}">
                        <div class="rowElem"><label><span id="usuario-label" class="property-label"><g:message code="teste.usuario.label" default="Usuario" /></span>:</label>
                            <div class="formRight">
                                
                                <span class="property-value" aria-labelledby="usuario-label"><g:link controller="usuario" action="show" id="${testeInstance?.usuario?.id}">${testeInstance?.usuario}</g:link></span>
                                
                            </div><div class="fix"></div></div>
                    </g:if>
                    
                    <div class="fix"></div>
                </div>
            </fieldset>
        </div>
    </div>
    <div class="fix"></div>
</div>
</body>
</html>
