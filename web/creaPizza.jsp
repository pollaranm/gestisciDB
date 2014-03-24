<%-- 
    Document   : creaUser
    Created on : 7-feb-2014, 14.20.54
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
        <h1>Pizza creation</h1>
        <%
            String url = "jdbc:derby://localhost:1527/pizzeria";
            String user = "app";
            String psw = "app";
            try{
                DriverManager.registerDriver(new org.apache.derby.jdbc.ClientDriver());
                Connection conn = DriverManager.getConnection(url,user,psw); 
                Statement st = conn.createStatement();
                
                String nameP = (String) request.getParameter("nameP");
                String recipe = (String) request.getParameter("recipe");
                Double price = Double.parseDouble(request.getParameter("price"));
                //!!! bigognerà inserire un controllo per cercare la virgola e sostituirla con il PUNTO !!!
                                
                st.executeUpdate("INSERT INTO pizzas (nameP, recipe, price) VALUES ('"+nameP+"', '"+recipe+"', "+price+")");
               
               
                st.close();
                conn.close();
                        
                
            }catch(SQLException e) { out.println(e.getMessage()); }
            
             out.println("<br>nuova pizza inserita");
             out.println("<br><a href='index.html'>Torna indietro</a>");
            
        %>
    </body>
</html>