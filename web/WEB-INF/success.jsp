<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : success
    Created on : Jun 1, 2017, 11:14:36 PM
    Author     : jkotsis
--%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Login Success</title>
       <link href="../media/dataTables/demo_page.css" rel="stylesheet" type="text/css" />
        <link href="../media/dataTables/demo_table.css" rel="stylesheet" type="text/css" />
        <link href="../media/dataTables/demo_table_jui.css" rel="stylesheet" type="text/css" />
        <link href="../media/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" media="all" />
        <link href="../media/themes/smoothness/jquery-ui-1.7.2.custom.css" rel="stylesheet" type="text/css" media="all" />
        <script src="../scripts/jquery.js" type="text/javascript"></script>
        <script src="../scripts/jquery.dataTables.min.js" type="text/javascript"></script>
       
        <script type="text/javascript">
            $(document).ready(function () {
                $("#Meals").dataTable()({
                     "sPaginationType": "full_numbers",
                     "bJQueryUI": true 
                });
            });
        </script>
 
    </head>

    <body id="dt_example">
        <h1> Congratulations! </h1>

        <p>You have successfully logged in.</p>

        <p>Your name is: <bean:write name="LoginForm" property="name" />.</p>

        <p>Your email address is: <bean:write name="LoginForm" property="email" />.
            <sql:query var="Meals" dataSource="jdbc/OpenClinic">
                SELECT id, transactionType FROM examinations
            </sql:query>

        <div class="dataTables_length" id="example_length">
               <label>Show 
                   <select name="example_length" aria-controls="example" class="">
                       <option value="10">10</option>
                       <option value="25">25</option>
                       <option value="50">50</option>
                       <option value="100">100</option>
                   </select> entries</label>
        </div>

        <div id ="Meals_jui">
        <table id="Meals" class="display" cellspacing="0" width="100%" border="1" >
        
            <!-- column headers -->
            <tr>
                <c:forEach var="columnName" items="${Meals.columnNames}">
                    <th><c:out value="${columnName}"/></th>
                </c:forEach>
            </tr>
     
            <tbody>
            <!-- column data -->
            <c:forEach var="row" items="${Meals.rowsByIndex}">
                <tr>
                    <c:forEach var="column" items="${row}">
                        <td><c:out value="${column}"/></td>
                    </c:forEach>
                </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
    </body>

</html>
