<%-- 
    Document   : display
    Created on : Jul 31, 2024, 11:50:53 AM
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
        <script>
            function confirmMssg(m, u)
            {
                if(confirm(m))
                {
                    window.location= u;
                }
            }
        </script>
    </head>
    <body>
        <sql:setDataSource var="dbsource"  driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/test" user="root" password="root" />
               <sql:query dataSource="${dbsource}" var="result">
                select * from productdetails_25 ;
               </sql:query>
        <form>
           <table border ="1">
               <caption> Product List </caption>
               
           <tr>
                 <th>Product ID</th>
                 <th>Product Name</th>  
                 <th>Product Quantity</th>
                 <th colspan="2">Action</th>
           </tr>
           <c:forEach var="row" items="${result.rows}">
           <tr>
               <td> <c:out value="${row.pid}"/></td>
                <td> <c:out value="${row.pname}"/></td>                
                <td> <c:out value="${row.quantity}"/></td>
                <td> <a href="update.jsp?pid=<c:out value="${row.pid}"/>">Update </a></td>
                <td> <a href="javascript:confirmMssg('Sure you want to delete the record?','deleteDB.jsp?pid=<c:out value="${row.pid}"/>')">Delete</a></td>
          </tr>
           </c:forEach>
           </table>
            <a href="index.html">Go home</a>
        </form>
    </body>
</html>
