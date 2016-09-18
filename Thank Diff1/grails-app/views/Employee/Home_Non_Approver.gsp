<%--
  Created by IntelliJ IDEA.
  User: inckumar023
  Date: 4/26/2016
  Time: 4:48 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<h1>My Account</h1>
<h2>${flash.message} </h2>
<table align="center" width="400" border="1" class="boldtable">
    <g:form controller="employee" method="post" >
        <g:each in="${allList}" status="j" var="thisProject">


            <tr>

               <td>${j+1}.${thisProject.username}</td>

            </tr>

        </g:each>
        <select name="select Employee">
            <option value="{optionKey}">Select Employee </option>
            <option value="{optionKey}">${allList}</option>
            <option value="{optionKey}">{optionValue}</option>
            <option value="{optionKey}">{optionValue}</option>
        </select>

        <select name="select Employee">
            <option value="{optionKey}">Give Reward point</option>
            <option value="{optionKey}">10</option>
            <option value="{optionKey}">20</option>
            <option value="{optionKey}">30</option>
            <option value="{optionKey}">40</option>
            <option value="{optionKey}">50</option>
        </select></br></br></br></br></br>
        <g:actionSubmit name="Submit" value="Submit" action="giveRewards"  />
    </g:form>
</table>

</body>
</html>