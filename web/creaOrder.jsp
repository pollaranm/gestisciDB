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
        <h1>Order creation</h1>
        <%
            String url = "jdbc:derby://localhost:1527/pizzeria";
            String user = "app";
            String psw = "app";
            try{
                DriverManager.registerDriver(new org.apache.derby.jdbc.ClientDriver());
                Connection conn = DriverManager.getConnection(url,user,psw); 
                Statement st = conn.createStatement();
                
                //String id_u = (String) request.getParameter("id_u");
                Integer id_u = Integer.parseInt(request.getParameter("id_u"));
                Integer id_p = Integer.parseInt(request.getParameter("id_p"));
                Integer numberOf = Integer.parseInt(request.getParameter("numberOf"));
                String dataO = request.getParameter("dataO");
                Integer hour_time = Integer.parseInt(request.getParameter("hour_time"));
                String shipped = (String) request.getParameter("shipped");
                String received = (String) request.getParameter("received");
                
                out.println("<br>"+id_u);
                out.println("<br>"+id_p);
                out.println("<br>"+numberOf);
                out.println("<br>"+dataO);
                out.println("<br>"+hour_time);
                out.println("<br>"+shipped);
                out.println("<br>"+received);
                
                
                st.executeUpdate("INSERT INTO orders(id_u, id_p, numberOf, dataO, hour_time, shipped, received) VALUES ("+id_u+", "+id_p+", "+numberOf+", '"+dataO+"', '"+hour_time+"', "+shipped+", "+received+")");
               
               
                st.close();
                conn.close();
                        
                
            }catch(SQLException e) { out.println(e.getMessage()); }
            
             out.println("<br>nuovo order inserito");
             out.println("<br><a href='index.html'>Torna indietro</a>");
            
        %>
    </body>
</html>
