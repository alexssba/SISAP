
<%@ page import="sisap.Disciplina" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'disciplina.label', default: 'Disciplina')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
    <div class="content">
        <div class="title"><h5><g:message code="default.list.label" args="[entityName]" /></h5></div>
        <div class="breadCrumbHolder module">
            <div class="breadCrumb module">
                <ul>
                    <li class="firstB"><a href="#">Home</a> </li>
                    <li><g:link action="index"> <g:message code="default.list.label" args="[entityName]" /></g:link></li>

                </ul>
            </div>
        </div>

			<g:if test="${flash.message}">
                <div class="pt20">
                    <div class="nNote nSuccess hideit">
                        <p><strong>Sucesso: </strong>${flash.message}</p>
                    </div>
                </div>
			</g:if>
        <div class="middleNav">
            <ul>
                <li class="iPlus"><g:link action="create"><span>Adicionar ${message(code: 'disciplina.label', default: 'Disciplina')}</span></g:link> </li>
                %{--<li class="iStat"><a href="#" title=""><span>Buscar usuário</span></a></li>--}%
                %{--<li class="iUser"><a href="#" title=""><span>User list</span></a></li>--}%
                %{--<li class="iOrders"><a href="#" title=""><span>Billing panel</span></a></li>--}%
            </ul>
        </div>
        <div class="fix"></div>
        <div class="table">
            <div class="head"><h5 class="iFrames">Listagem de <g:message code="default.list.label" args="[entityName]" />: ${disciplinaInstanceTotal}</h5></div>
			<table cellpadding="0" cellspacing="0" width="100%" class="tableStatic resize">
				<thead>
					<tr>
					
                        <td>${message(code: 'disciplina.codigo.label', default: 'Codigo')}</td>
					
                        <td>${message(code: 'disciplina.descricao.label', default: 'Descricao')}</td>
					
                        <td>${message(code: 'disciplina.nome.label', default: 'Nome')}</td>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${disciplinaInstanceList}" status="i" var="disciplinaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${disciplinaInstance.id}">${fieldValue(bean: disciplinaInstance, field: "codigo")}</g:link></td>
					
						<td>${fieldValue(bean: disciplinaInstance, field: "descricao")}</td>
					
						<td>${fieldValue(bean: disciplinaInstance, field: "nome")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
            </div>
        <div class="pagination">
            <ul class="pages">
                <g:paginateCustom total="${disciplinaInstanceTotal}" />
            </ul>
        </div>

		</div>
    <div class="fix"></div>
	</body>
</html>
