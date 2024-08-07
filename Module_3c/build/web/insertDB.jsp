<%-- 
    Document   : insertDB
    Created on : Jul 31, 2024, 11:50:07 AM
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
        <c:if test="${empty param.pid or empty  param.pname or empty param.quantity}">
              <c:redirect url="insert.jsp">
                  <c:param name="errMsg" value="Please enter Product details"/>
              </c:redirect>    
        </c:if>
        <sql:setDataSource var="dbsource"  driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/test" user="root" password="root" />
        <sql:update dataSource="${dbsource}" var="result">
                    INSERT INTO productdetails_25 VALUES(?,?,?);
                    <sql:param  value="${param.pid}"/>
                    <sql:param  value="${param.pname}"/>
                    <sql:param  value="${param.quantity}"/>
        </sql:update>
        <c:if test="${result>=1}">
            <font size="5" color="green">Congratulations!!! Data inserted successfully</font>
            <c:redirect url="insert.jsp">
                <c:param name="susMsg" value="Congratulations!!! Data inserted successfully"/>
            </c:redirect>
        </c:if>
    </body>
</html>
