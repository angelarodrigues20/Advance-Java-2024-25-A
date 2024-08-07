<%-- 
    Document   : deleteDB
    Created on : Jul 31, 2024, 11:51:21 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*,java.util.*,java.sql.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <sql:setDataSource var="dbsource"  driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/test" user="root" password="root" />
            <sql:update dataSource="${dbsource}" var="result">
               DELETE FROM productdetails_25 WHERE pid=?;               
            <sql:param  value="${param.pid}"/>
            </sql:update>
             <c:if test="${result>=1}">
                 <font color="green"> Congrats Data deleted Successfully!!</font>
                 <a href="index.html">Go Home</a>
             </c:if>           
    </body>
</html>
