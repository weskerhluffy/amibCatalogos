<%@ page import="mx.amib.sistemas.catalogos.general.model.catalog.TipoInstitucion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tipoInstitucion.label', default: 'TipoInstitucion')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
	<ul class="breadcrumb">
           <li><a href="#">Acciones</a><span class="divider"></span></li>
           <li><a href="#">Búsqueda de Registros</a></li>
		</ul>
		<fieldset>
			<div class="panel panel-default col-lg-12">
           		<div class="panel-heading">
					<h2 class="panel-title">Acciones</h2>
				</div></br>
					<ul class="nav navbar-nav" role="vavBar">
						<!--  <a href="#edit-tipoInstitucion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
						<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>-->
						<li><g:link class="list btn btn-primary colortitle colorblack" action="index">Gestion tipo institucion</g:link></li>
						<li>&nbsp;&nbsp;&nbsp;&nbsp;</li>
						<li><g:link class="create btn btn-primary colortitle colorblack" action="create">Crear tipo institucion</g:link></li>
					</ul></br>
			</div>
		</fieldset>
		<fieldset>
			<div class="panel panel-default col-lg-12">
            	<div class="panel-heading">	
   					<div class="widgetTitle">
						<div id="edit-tipoInstitucion" class="content scaffold-edit" role="main">
							<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
							<g:if test="${flash.message}">
							<div class="message" role="status">${flash.message}</div>
							</g:if>
						</div>
					</div>
				</div></br>	
						
							<g:hasErrors bean="${tipoInstitucionInstance}">
							<ul class="errors" role="alert">
								<g:eachError bean="${tipoInstitucionInstance}" var="error">
								<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
								</g:eachError>
							</ul>
							</g:hasErrors>
							<g:form url="[resource:tipoInstitucionInstance, action:'update']" method="PUT" >
								<g:hiddenField name="version" value="${tipoInstitucionInstance?.version}" />
								<fieldset class="form">
									<g:render template="form"/></fieldset></br>
									&nbsp;
									<g:actionSubmit class="save btn btn-primary colortitle colorblack" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
									&nbsp;
									<g:link class="list btn btn-primary colortitle colorblack" action="index">Regresar</g:link></li>
								</fieldset></br>
							</g:form>
						</div>
	</body>
</html>
