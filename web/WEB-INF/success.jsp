<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : success
    Created on : Jun 1, 2017, 11:14:36 PM
    Author     : jkotsis
--%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login Success</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css">
        <script type="text/javascript" charset="utf8" src="//code.jquery.com/jquery-1.12.4.js"></script>
        <script type="text/javascript" charset="utf8" src="//cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
    </head>
   
    <body>
        <h1> Congratulations! </h1>

        <p>You have successfully logged in.</p>

        <p>Your name is: <bean:write name="LoginForm" property="name" />.</p>

        <p>Your email address is: <bean:write name="LoginForm" property="email" />.
            <sql:query var="Meals" dataSource="jdbc/OpenClinic">
                SELECT id, transactionType FROM examinations
            </sql:query>

        <table id="example" class="display" cellspacing="0" width="100%" border="1" >
            <!-- column headers -->
            <tr>
                <c:forEach var="columnName" items="${Meals.columnNames}">
                    <th><c:out value="${columnName}"/></th>
                    </c:forEach>
            </tr>
            <!-- column data -->
            <c:forEach var="row" items="${Meals.rowsByIndex}">
                <tr>
                    <c:forEach var="column" items="${row}">
                        <td><c:out value="${column}"/></td>
                    </c:forEach>
                </tr>
            </c:forEach>
        </table>
    </body>
     <script>
        $(document).ready(function () {
            $('#example').DataTable({
                "lengthMenu": [ 10, 25, 50, 75, 100 ]
            });
        });
    </script>
</html>
