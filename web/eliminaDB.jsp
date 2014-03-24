<%-- 
    Document   : eliminaDB
    Created on : 7-feb-2014, 13.01.44
    Author     : TTM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*, java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Database elimination</h1>
        <%
            String url = "jdbc:derby://localhost:1527/pizzeria";
            String user = "app";
            String psw = "app";
            try{
                DriverManager.registerDriver(new org.apache.derby.jdbc.ClientDriver());
                Connection conn = DriverManager.getConnection(url,user,psw); 
                Statement st = conn.createStatement();
                st.executeUpdate("DROP TABLE PIZZAS");
                st.executeUpdate("DROP TABLE USERS");
                st.executeUpdate("DROP TABLE ORDERS");
               
                st.close();
                conn.close();
                        
                
            }catch(SQLException e) { out.println(e.getMessage()); }
            
            out.println("<br>tabelle distrutte");
            out.println("<br><a href='index.html'>Torna indietro</a>");
            
        %>
    </body>
</html>
