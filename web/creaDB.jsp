<%-- 
    Document   : createDB
    Created on : 5-feb-2014, 16.39.27
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
        <h1>Database creation</h1>
        <%
            String url = "jdbc:derby://localhost:1527/pizzeria";
            String user = "app";
            String psw = "app";
            try{
                DriverManager.registerDriver(new org.apache.derby.jdbc.ClientDriver());
                Connection conn = DriverManager.getConnection(url,user,psw); 
                Statement st = conn.createStatement();
                
                st.executeUpdate("CREATE TABLE pizzas (id_p SMALLINT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1), nameP VARCHAR(30) NOT NULL, recipe VARCHAR(50) NOT NULL, price DOUBLE NOT NULL, PRIMARY KEY (id_p))");
                st.executeUpdate("CREATE TABLE users (id_u SMALLINT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1), nameU VARCHAR(30) NOT NULL, surname VARCHAR(30) NOT NULL, password VARCHAR(30) NOT NULL, address VARCHAR(50) NOT NULL, phone VARCHAR(20) NOT NULL, typerole VARCHAR(6) NOT NULL, email VARCHAR(40) NOT NULL, PRIMARY KEY (id_u))");
                st.executeUpdate("CREATE TABLE orders (id_o INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1), id_u INT NOT NULL, id_p INT NOT NULL, numberOf INT NOT NULL, dataO DATE NOT NULL, hour_time VARCHAR(5) NOT NULL, shipped BOOLEAN NOT NULL, received BOOLEAN NOT NULL, PRIMARY KEY (id_o, dataO))");
                st.close();
                conn.close();
                        
                
            }catch(SQLException e) { out.println(e.getMessage()); }
            
            out.println("<br>tabelle create");
            out.println("<br><a href='index.html'>Torna indietro</a>");
            
        %>
    </body>
</html>

