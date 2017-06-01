<%-- 
    Document   : login
    Created on : Jun 1, 2017, 10:44:51 PM
    Author     : jkotsis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>L o g i n  F o r m</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <html:form action="/login">
            <table border="0">
                <thead>
                    <tr>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Enter your name:</td>
                        <td><html:text property="name" /></td>
                    </tr>
                    <tr>
                        <td>Enter your email:</td>
                        <td><html:text property="email" /></td>
                    </tr>
                    <tr>
                        <td></td>
                         <html:submit value="Login" />
                    </tr>
                </tbody>
            </table>

        </html:form>
    </body>
</html>
