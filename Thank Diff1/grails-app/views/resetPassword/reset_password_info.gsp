<%--
  Created by IntelliJ IDEA.
  User: inckumar023
  Date: 4/27/2016
  Time: 10:43 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<g:form method="post" >
<h1>Forgot Your Password ?</h1>
%{--<p>Password reset email will be send to ${params.username},
follow through the details to reset your password</p>--}%
    ${flash.message}<br/>
<label>Enter EmailId</label><br/>
<input type="text" name="emailId"><br/>
<g:actionSubmit name="reset" value="Send Password Rest Mail" action="SendPasswordByEmail"  />
</g:form>

</body>
</html>