<%--
  Created by IntelliJ IDEA.
  User: insbhowmic
  Date: 4/20/2016
  Time: 8:31 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>login</title>
</head>

<body>
<div class="body">
    <h1>Login</h1>
    <g:if test="${flash.message}">
        <div class="message">${flash.message}</div>
    </g:if>
    <g:form method="post" >
        <div class="dialog">
            <table>
                <tbody>
                <tr class="prop">
                    <td valign="top" class="name">
                        <label for="username">Username:</label>
                    </td>
                    <td valign="top">
                        <input type="text"
                               id="username" name="username"/>
                    </td>
                </tr>
                <tr class="prop">
                    <td valign="top" class="name">
                        <label for="password">Password:</label>
                    </td>
                    <td valign="top">
                        <input type="password"
                               id="password" name="password"/>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
        <div class="buttons">
            <span class="button">

               <g:actionSubmit name="Login" value="Login" action="authenticate"  />
                <g:actionSubmit name="ForgotPassword" value="ForgotPassword" action="ForgotPassword"  />

            </span>
        </div>
    </g:form>
</div>
</body>
</html>