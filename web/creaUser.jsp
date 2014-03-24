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
        <h1>User Creation</h1>
        <%
            String url = "jdbc:derby://localhost:1527/pizzeria";
            String user = "app";
            String psw = "app";
            try{
                DriverManager.registerDriver(new org.apache.derby.jdbc.ClientDriver());
                Connection conn = DriverManager.getConnection(url,user,psw); 
                Statement st = conn.createStatement();
                
                //String id_u = (String) request.getParameter("id_u");
                String nameU = (String) request.getParameter("nameU");
                String surname = (String) request.getParameter("surname");
                String password = (String) request.getParameter("password");
                String address = (String) request.getParameter("address");
                String phone = (String) request.getParameter("phone");
                String role = (String) request.getParameter("typerole");
                String email = (String) request.getParameter("email");
                
                st.executeUpdate("INSERT INTO users(nameU, surname, password, address, phone, typerole, email) VALUES ('"+nameU+"', '"+surname+"', '"+password+"', '"+address+"', '"+phone+"', '"+role+"', '"+email+"')");
                              
                st.close();
                conn.close();
                        
                
            }catch(SQLException e) { out.println(e.getMessage()); }
            
             out.println("<br>nuovo user inserito");
             out.println("<br><a href='index.html'>Torna indietro</a>");
            
        %>
    </body>
</html>
