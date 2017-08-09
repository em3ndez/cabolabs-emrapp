<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main">
    <title><g:message code="patient.create.action" /></title>
  </head>
  <body>
    <div class="nav" role="navigation">
      <ul>
        <li><g:link class="list" action="index"><g:message code="clinicalSession.list.nav.patients" /></g:link></li>
      </ul>
    </div>
    <div id="create-patient" class="content scaffold-create" role="main">
      <h1><g:message code="patient.create.action" /></h1>
      <g:if test="${flash.message}">
      <div class="message" role="status">${flash.message}</div>
      </g:if>
      <g:hasErrors bean="${patientInstance}">
      <ul class="errors" role="alert">
        <g:eachError bean="${patientInstance}" var="error">
        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
        </g:eachError>
      </ul>
      </g:hasErrors>
      <g:form url="[resource:patientInstance, action:'save']" >
        <fieldset class="form">
          <g:render template="form"/>
        </fieldset>
        <fieldset class="buttons">
          <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
        </fieldset>
      </g:form>
    </div>
  </body>
</html>
