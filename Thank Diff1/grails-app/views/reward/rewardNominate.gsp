<%--
  Created by IntelliJ IDEA.
  User: inabengre
  Date: 5/6/2016
  Time: 3:43 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>POP - Nominate for Reward</title>
    <meta name="layout" content="main" />
</head>
<body>
<g:form class="simpleform" method="post">
    <fieldset>
        <legend>Nominate for Reward</legend>
        <p class="info">
            Complete the form below to create an account!
        </p>
        <g:hasErrors bean="${reward}">
            <div class="errors">
                <g:renderErrors bean="${reward}"/>
            </div>
        </g:hasErrors>
        <p>
            <label for="rewardToName">Nominee Name</label>
            <select name="rewardToName" id="rewardToName">
                <option value="">Select</option>
                <g:each in="${rewardToName}" status="i" var="rewardToName">
                    <option value="${rewardToName.id}">${dm.name}</option>
                </g:each>
            </select>
        </p>

        <p>
            <label for="userName">Username</label>
            <g:textField name="userName"
                         class="${hasErrors(bean:employee,field:'userName','errors')}"/>
        </p>

        <p>
            <label for="password">Password</label>
            <g:passwordField name="password"
                             class="${hasErrors(bean:employee,field:'password','errors')}" />
        </p>
        <p>
            <label for="confirmPwd">Confirm Password</label>
            <g:passwordField name="confirmPwd"
                             class="${hasErrors(bean:employee,field:'confirmPwd','errors')}" />
        </p>
        <p>
            <label for="role">Role</label>
            <g:textField name="role"
                         class="${hasErrors(bean:employee,field:'role','errors')}"/>
        </p>



        <p>
            <label for="emailId">Email</label>
            <g:textField name="emailId"
                         class="${hasErrors(bean:employee,field:'emailId','errors')}" />
        </p>

        <p class="button">
            <label>&nbsp;</label>
            <g:actionSubmit class="button" name="register" action="save" value="Create Account" />
        </p>
    </fieldset>
</g:form>
</body>
</html>