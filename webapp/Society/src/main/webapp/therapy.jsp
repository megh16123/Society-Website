<%@page import="org.hibernate.Transaction"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="com.entities.SecretTherapy" %>
<%@page import="org.hibernate.Session" %>
<%
SecretTherapy ST = null;
Session s = FactoryProvider.getFactory().openSession();
Transaction tx = s.beginTransaction();
ST = s.get(SecretTherapy.class,1);
tx.commit();
s.close();
%>
<!DOCTYPE jsp>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Therapy</title>
    <link rel="stylesheet" href="./css/therapy.css">
    <link rel="stylesheet" href="./css/navbar.css">
    <link rel="shortcut icon" href="media/logo.png" type="image/x-icon">
</head>
<body>
    <header class="top-head">
        <a class="logo" href="/"><img src="media/logo.png" alt="logo" height="60px"></a>
        <nav>
            <ul class="nav-links">
                <li><a class="gym" href="index.jsp">Home</a></li>
          <li><a class="gym" href="gym.jsp">Gym</a></li>
          <li><a class="gym" href="pool.jsp">Pool</a></li>
          <li><a class="gym" href="parking.jsp">Parking</a></li>
          <li><a class="gym" href="feedback.jsp">Anonymous Feedback</a></li>
          <li><a class="gym" href="login.jsp">Login</a></li>
            </ul>
        </nav>
        <p class="menu kbc">Menu</p>
    </header>
    <div class="overlay">
        <a class="close">&times;</a>
        <div class="overlay__content">
                   <a href="index.jsp">Home</a>
        <a href="gym.jsp">Gym</a>
        <a href="pool.jsp">Pool</a>
        <a href="parking.jsp">Parking</a>
        <a href="feedback.jsp">Anonymous Feedback</a>
        <a href="login.jsp">Login</a>
        </div>
    </div>
    <div class="pool-container">
        <h2>Secret Therapy</h2>
    <form action="SecretTherapySlotBook" method="post">
        <div class="pool-slots">
            <table>
                <tr>
                    <th>TIMINGS</th>
                    <th>BOOK</th>
                    <th>TIMINGS</th>
                    <th>BOOK</th>
                </tr>
                <tr>
                    <td>7:00-7:30</td>
                    <td>
                    <%
                    if(ST.isSlot1()){
                    	out.println("Booked");
                    }else{
                    %>
                        <button type="submit" value="1" name="slot" class="booking">Book</button>
                    <%} %>
                    </td>
                    <td>7:30-8:00</td>
                    <td>
                     <%
                    if(ST.isSlot2()){
                    	out.println("Booked");
                    }else{
                    %>
                        <button type="submit" value="2" name="slot" class="booking">Book</button>
                    <%} %>
                    </td>
                </tr>
                <tr>
                    <td>8:00-8:30</td>
                    <td>
                     <%
                    if(ST.isSlot3()){
                    	out.println("Booked");
                    }else{
                    %>
                        <button type="submit" value="3" name="slot" class="booking">Book</button>
                    <%} %>
                    </td>
                    <td>8:30-9:00</td>
                    <td>
                     <%
                    if(ST.isSlot4()){
                    	out.println("Booked");
                    }else{
                    %>
                        <button type="submit" value="4" name="slot" class="booking">Book</button>
                    <%} %>
                    </td>
                </tr>
                <tr>
                    <td>17:00-17:30</td>
                    <td>
                     <%
                    if(ST.isSlot5()){
                    	out.println("Booked");
                    }else{
                    %>
                        <button type="submit" value="5" name="slot" class="booking">Book</button>
                    <%} %>
                    </td>
                    <td>17:30-18:00</td>
                    <td>
                     <%
                    if(ST.isSlot6()){
                    	out.println("Booked");
                    }else{
                    %>
                        <button type="submit" value="6" name="slot" class="booking">Book</button>
                    <%} %>
                    </td>
                </tr>
                <tr>
                    <td>18:00-18:30</td>
                    <td>
                     <%
                    if(ST.isSlot7()){
                    	out.println("Booked");
                    }else{
                    %>
                        <button type="submit" value="7" name="slot" class="booking">Book</button>
                    <%} %>
                    </td>
                    <td>18:30-19:00</td>
                    <td>
                     <%
                    if(ST.isSlot8()){
                    	out.println("Booked");
                    }else{
                    %>
                        <button type="submit" value="8" name="slot" class="booking">Book</button>
                    <%} %>
                    </td>
                </tr>
                <tr>
                    <td>19:00-19:30</td>
                    <td>
                     <%
                    if(ST.isSlot9()){
                    	out.println("Booked");
                    }else{
                    %>
                        <button type="submit" value="9" name="slot" class="booking">Book</button>
                    <%} %>
                    </td>
                    <td>19:30-20:00</td>
                    <td>
                     <%
                    if(ST.isSlot10()){
                    	out.println("Booked");
                    }else{
                    %>
                        <button type="submit" value="10" name="slot" class="booking">Book</button>
                    <%} %>
                    </td>
                </tr>
            </table>
        </div>
        </form>
    </div>
    <script type="text/javascript" src="js/navbar.js"></script>
</body>
</html>