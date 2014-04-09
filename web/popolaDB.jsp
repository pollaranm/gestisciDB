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
                
                //inserisco le pizze
                //pizza 1
                st.executeUpdate("INSERT INTO pizzas (nameP, recipe, price) VALUES ('Focaccia', 'farina acqua sale olio', 3)");
                //pizza 2
                st.executeUpdate("INSERT INTO pizzas (nameP, recipe, price) VALUES ('Margherita', 'pomodoro mozzarella basilico', 4)");
                //pizza 3
                st.executeUpdate("INSERT INTO pizzas (nameP, recipe, price) VALUES ('Napoli', 'pomodoro mozzarella acciughe capperi', 4.5)");
                st.executeUpdate("INSERT INTO pizzas (nameP, recipe, price) VALUES ('Cotto', 'pomodoro mozzarella prosciutto cotto', 5)");
                st.executeUpdate("INSERT INTO pizzas (nameP, recipe, price) VALUES ('Diavola', 'pomodoro mozzarella olive salamino', 5)");
                st.executeUpdate("INSERT INTO pizzas (nameP, recipe, price) VALUES ('Capricciosa', 'pomodoro mozzarella carciofini funghi wurstel olive cotto', 6.5)");
                st.executeUpdate("INSERT INTO pizzas (nameP, recipe, price) VALUES ('Valtellina', 'pomodoro mozzarella bresaola rucola pinoli', 7)");
                st.executeUpdate("INSERT INTO pizzas (nameP, recipe, price) VALUES ('Signor Nello', 'pomodoro mozzarella salsiccia provola radicchio', 7)");
                st.executeUpdate("INSERT INTO pizzas (nameP, recipe, price) VALUES ('Primavera', 'pomodoro pomodoro fresco rucola e bufala', 6.5)");
                st.executeUpdate("INSERT INTO pizzas (nameP, recipe, price) VALUES ('Vegetariana ', 'mozzarella pomodoro fresco funghi carciofi pesto verdure', 5.5)");
                
                
                //inserisco gli utenti
                st.executeUpdate("INSERT INTO users(nameU, surname, password, address, phone, typerole, email) VALUES ('OPizzaiolo', 'Di Napoli', 'maradona', 'Napoli centro', '328', 'admin', 'opizzaiolo@dinapoli.it')");
                st.executeUpdate("INSERT INTO users(nameU, surname, password, address, phone, typerole, email) VALUES ('a_nome', 'a_cogn', 'a', 'giu di li', '32888888', 'admin', 'a')");
                st.executeUpdate("INSERT INTO users(nameU, surname, password, address, phone, typerole, email) VALUES ('b_nome', 'b_cogn', 'b', 'giu di la', '88888823', 'client', 'b')");
                st.executeUpdate("INSERT INTO users(nameU, surname, password, address, phone, typerole, email) VALUES ('simo', 'moi', 'boh', 'al poli', '123', 'client', 'simo@dinapoli.it')");
                st.executeUpdate("INSERT INTO users(nameU, surname, password, address, phone, typerole, email) VALUES ('io', 'sono', 'niko', 'nichelino', '333123', 'client', 'niko@dinichelino.it')");
                st.executeUpdate("INSERT INTO users(nameU, surname, password, address, phone, typerole, email) VALUES ('andre', 'non lo so', 'orbassano', 'come la password', '55555', 'client', 'andre@gmail.it')");
                                
                //inserisco gli ordini
                /*st.executeUpdate("INSERT INTO orders(id_u, id_p, numberOf, dataO, hour_time, shipped, received) VALUES (2, 1, 1, '2014-03-12', '20:00', false, false)");
                st.executeUpdate("INSERT INTO orders(id_u, id_p, numberOf, dataO, hour_time, shipped, received) VALUES (2, 2, 2, '2014-03-12', '20:00', false, false)");
                st.executeUpdate("INSERT INTO orders(id_u, id_p, numberOf, dataO, hour_time, shipped, received) VALUES (2, 3, 3, '2014-03-12', '20:00', false, false)");
                st.executeUpdate("INSERT INTO orders(id_u, id_p, numberOf, dataO, hour_time, shipped, received) VALUES (3, 1, 1, '2014-03-15', '22:00', true, false)");
                st.executeUpdate("INSERT INTO orders(id_u, id_p, numberOf, dataO, hour_time, shipped, received) VALUES (3, 2, 7, '2014-03-15', '22:00', true, false)");
                st.executeUpdate("INSERT INTO orders(id_u, id_p, numberOf, dataO, hour_time, shipped, received) VALUES (3, 5, 3, '2014-03-15', '22:00', true, false)");
                st.executeUpdate("INSERT INTO orders(id_u, id_p, numberOf, dataO, hour_time, shipped, received) VALUES (4, 1, 1, '2014-04-12', '11:00', false, false)");
                st.executeUpdate("INSERT INTO orders(id_u, id_p, numberOf, dataO, hour_time, shipped, received) VALUES (4, 3, 1, '2014-04-12', '11:00', false, false)");
                st.executeUpdate("INSERT INTO orders(id_u, id_p, numberOf, dataO, hour_time, shipped, received) VALUES (4, 2, 1, '2014-04-12', '11:00', false, false)");*/
               
               
                st.close();
                conn.close();
                        
                
            }catch(SQLException e) { out.println(e.getMessage()); }
            
             out.println("<br>popolazione avvenuta con successo XD !!!!");
             out.println("<br><a href='index.html'>Torna indietro</a>");
            
        %>
    </body>
</html>
