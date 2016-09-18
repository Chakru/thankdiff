<%--
  Created by IntelliJ IDEA.
  User: insbhowmic
  Date: 4/20/2016
  Time: 8:31 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Reset Password</title>
</head>

<body>
<div class="body">
    <h1>Reset Password</h1>
    <g:form controller="resetPassword" method="post" >
        <div class="dialog">
            <table>
                <tbody>
                <tr class="prop">
                    <td valign="top" class="name">
                        <label for="username">Username:</label>
                    </td>
                    <td valign="top">
                        <input type="text"
                               id="username" name="username" value="${flash.message}"/>
                    </td>
                </tr>
                <tr class="prop">
                    <td valign="top" class="name">
                        <label for="New password">New Password:</label>
                    </td>
                    <td valign="top">
                        <input type="password"
                               id="New password" name="password"/>
                    </td>
                </tr>
                <tr class="prop">
                    <td valign="top" class="name">
                        <label for="Conform password">Conform Password:</label>
                    </td>
                    <td valign="top">
                        <input type="password"
                               id="Conform password" name="Conform password"/>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
        <div class="buttons">
            <span class="button">

                <g:actionSubmit name="resetPassword" value="Reset Password" action="resetPassword "  />


            </span>
        </div>
    </g:form>
</div>
</body>
</html>