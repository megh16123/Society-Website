<%@page import="java.util.List" %>
<%@page import="java.util.Collections" %>
<%@page import="com.helper.FactoryProvider" %>
<%@page import="org.hibernate.Session" %>	
<%@page import="com.entities.GymSlots" %>
<% 
	GymSlots gym = null;
if(session.getAttribute("id")==null){
	response.sendRedirect("login.jsp"); 
}else{
	Session s = FactoryProvider.getFactory().openSession();
	gym = (GymSlots)s.createQuery("FROM GymSlots G WHERE G.id=:id").setParameter("id",session.getAttribute("id")).uniqueResult();
}
%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Gym</title>
    <link rel="stylesheet" href="css/gym.css" />
    <link rel="stylesheet" href="css/navbar.css" />
    <link rel="shortcut icon" href="media/logo.png" type="image/x-icon" />
  </head>
  <body>
    <header class="top-head">
      <a class="logo" href="/"
        ><img src="media/logo.png" alt="logo" height="60px"
      /></a>
      <nav>
        <ul class="nav-links">
          <li><a class="gym" href="index.jsp">Home</a></li>
          <li><a class="gym" href="gym.jsp">Gym</a></li>
          <li><a class="gym" href="pool.jsp">Pool</a></li>
          <li><a class="gym" href="parking.jsp">Parking</a></li>
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
        <a href="login.jsp">Login</a>
      </div>
    </div>

    <div class="gym-container">
      <h2>Society Gym</h2>
      <form action="GymSlotBook" method="post">
      <div class="gym-slots">
        <table>
          <tr>
            <th>TIMINGS</th>
            <th>BOOK</th>
          </tr>
          <tr>
            <td>7:00-8:00</td>
            <td>
            <% if(gym!=null){
               if(gym.isMorning1()) {%>
            Booked
            <%}else if(gym.isMorning2()||gym.isEvening1()||gym.isEvening2()||gym.isEvening3()){
            	out.println("Can't book");
            }}else{ %>
              <input type="submit" name="slot" class="booking" value="morning1">
            <%} %>
            </td>
          </tr>
          <tr>
            <td>8:00-9:00</td>
            <td>
               <% if(gym!=null){
               if(gym.isMorning2()) {%>
            Booked
            <%}else if(gym.isMorning1()||gym.isEvening1()||gym.isEvening2()||gym.isEvening3()){
            	out.println("Can't book");
            }}else{ %>
              <input type="submit" name="slot" class="booking" value="morning2">
            <%} %>            </td>
          </tr>
          <tr>
            <td>17:00-18:00</td>
            <td>
              <% if(gym!=null){
               if(gym.isEvening1()) {%>
            Booked
            <%}else if(gym.isMorning1()||gym.isMorning2()||gym.isEvening2()||gym.isEvening3()){
            	out.println("Can't book");
            }}else{ %>
              <input type="submit" name="slot" class="booking" value="evening1">
            <%}%>
            </td>
          </tr>
          <tr>
            <td>18:00-19:00</td>
            <td>
             <% if(gym!=null){
               if(gym.isEvening2()) {%>
            Booked
            <%}else if(gym.isMorning1()||gym.isMorning2()||gym.isEvening1()||gym.isEvening3()){
            	out.println("Can't book");
            }}else{ %>
              <input type="submit" name="slot" class="booking" value="evening2">
            <%} %>
            </td>
          </tr>
          <tr>
            <td>19:00-20:00</td>
            <td>
            <% if(gym!=null){
               if(gym.isEvening3()) {%>
            Booked
            <%}else if(gym.isMorning1()||gym.isMorning2()||gym.isEvening1()||gym.isEvening2()){
            	out.println("Can't book");
            }}else{ %>
              <input type="submit" name="slot" class="booking" value="evening3">
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
