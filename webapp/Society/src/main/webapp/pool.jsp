<%@page import="java.util.List" %>
<%@page import="java.util.Collections" %>
<%@page import="com.helper.FactoryProvider" %>
<%@page import="org.hibernate.Session" %>	
<%@page import="com.entities.PoolSlots" %>
<% 
	PoolSlots pool = null;
if(session.getAttribute("id")==null){
	response.sendRedirect("login.jsp"); 
}else{
	Session s = FactoryProvider.getFactory().openSession();
	pool = (PoolSlots)s.createQuery("FROM PoolSlots G WHERE G.id=:id").setParameter("id",session.getAttribute("id")).uniqueResult();
}
%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Swimming Pool</title>
    <link rel="stylesheet" href="./css/pool.css" />
    <link rel="stylesheet" href="./css/navbar.css" />
    <link rel="shortcut icon" href="media/logo.png" type="image/x-icon" />
  </head>
  <body>
    <header class="top-head">
      <a class="logo" href="/"
        ><img src="media/logo.png" alt="logo" height="60px"
      /></a>
      <nav>
        <ul class="nav-links">
          <li><a href="index.jsp">Home</a></li>
          <li><a href="pool.jsp">pool</a></li>
          <li><a href="gym.jsp">Gym</a></li>
          <li><a href="parking.jsp">Parking</a></li>
          <li><a href="login.jsp">Login</a></li>
        </ul>
      </nav>
      <p class="menu kbc">Menu</p>
    </header>
    <div class="overlay">
      <a class="close">&times;</a>
      <div class="overlay__content">
        <a href="index.jsp">Home</a>
        <a href="pool.jsp">pool</a>
        <a href="pool.jsp">Pool</a>
        <a href="parking.jsp">Parking</a>
        <a href="login.jsp">Login</a>
      </div>
    </div>
    <div class="pool-container">
      <h2>Society Pool</h2>
        <form action="PoolSlotBook" method="post">
      <div class="pool-slots">
        <table>
          <tr>
            <th>TIMINGS</th>
            <th>BOOK</th>
          </tr>
          <tr>
            <td>7:00-8:00</td>
            <td>
              <% if(pool!=null){
               if(pool.isMorning1()) {%>
            Booked
            <%}else if(pool.isMorning2()||pool.isEvening1()||pool.isEvening2()||pool.isEvening3()){
            	out.println("Can't book");
            }}else{ %>
              <input type="submit" name="slot" class="booking" value="morning1">
            <%} %>
            </td>
          </tr>
          <tr>
            <td>8:00-9:00</td>
            <td>
              <% if(pool!=null){
               if(pool.isMorning2()) {%>
            Booked
            <%}else if(pool.isMorning1()||pool.isEvening1()||pool.isEvening2()||pool.isEvening3()){
            	out.println("Can't book");
            }}else{ %>
              <input type="submit" name="slot" class="booking" value="morning2">
            <%} %>
            </td>
          </tr>
          <tr>
            <td>17:00-18:00</td>
            <td>
              <% if(pool!=null){
               if(pool.isEvening1()) {%>
            Booked
            <%}else if(pool.isMorning2()||pool.isMorning1()||pool.isEvening2()||pool.isEvening3()){
            	out.println("Can't book");
            }}else{ %>
              <input type="submit" name="slot" class="booking" value="evening1">
            <%} %>
            </td>
          </tr>
          <tr>
            <td>18:00-19:00</td>
            <td>
              <% if(pool!=null){
               if(pool.isEvening2()) {%>
            Booked
            <%}else if(pool.isMorning2()||pool.isMorning1()||pool.isEvening1()||pool.isEvening3()){
            	out.println("Can't book");
            }}else{ %>
              <input type="submit" name="slot" class="booking" value="evening2">
            <%} %>
            </td>
          </tr>
          <tr>
            <td>19:00-20:00</td>
            <td>
             <% if(pool!=null){
               if(pool.isEvening3()) {%>
            Booked
            <%}else if(pool.isMorning2()||pool.isMorning1()||pool.isEvening2()||pool.isEvening1()){
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
