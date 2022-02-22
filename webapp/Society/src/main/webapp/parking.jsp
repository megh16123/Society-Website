<%@page import="org.hibernate.Query"%>
<%@page import="com.entities.ParkingSpace" %>
<%@page import="java.util.List" %>
<%@page import="com.helper.FactoryProvider" %>
<%@page import="org.hibernate.Session" %>	
<% 
List<ParkingSpace> park = null;
boolean slot1 = false,slot2=false,slot3=false,slot4=false,slot5=false,slot6=false,slot7=false,slot8=false,slot9=false,slot10=false;
boolean uslot1 = false,uslot2=false,uslot3=false,uslot4=false,uslot5=false,uslot6=false,uslot7=false,uslot8=false,uslot9=false,uslot10=false;

if(session.getAttribute("id")==null){
	
response.sendRedirect("login.jsp"); 
}else{
	Session s = FactoryProvider.getFactory().openSession();
	Query q = s.createQuery("FROM ParkingSpace WHERE userId = :id").setParameter("id",session.getAttribute("id"));
	park =q.list(); 

	for(ParkingSpace parkin:park){
		if("slot1".equals(parkin.getSlot())){
			uslot1=true;
		}else if("slot2".equals(parkin.getSlot())){
			uslot2=true;
		}else if("slot3".equals(parkin.getSlot())){
			uslot3=true;
		}else if("slot4".equals(parkin.getSlot())){
			uslot4=true;
		}else if("slot5".equals(parkin.getSlot())){
			uslot5=true;
		}else if("slot6".equals(parkin.getSlot())){
			uslot6=true;
		}else if("slot7".equals(parkin.getSlot())){
			uslot7=true;
		}else if("slot8".equals(parkin.getSlot())){
			uslot8=true;
		}else if("slot9".equals(parkin.getSlot())){
			uslot9=true;
		}else if("slot10".equals(parkin.getSlot())){
			uslot10=true;
		}	
	}
	
	 q = s.createQuery("From ParkingSpace");
	List<ParkingSpace> ps = q.list();
	s.close();
	for(ParkingSpace p :ps){
		if("slot1".equals(p.getSlot())){
			slot1=true;
		}else if("slot2".equals(p.getSlot())){
			slot2=true;
		}else if("slot3".equals(p.getSlot())){
			slot3=true;
		}else if("slot4".equals(p.getSlot())){
			slot4=true;
		}else if("slot5".equals(p.getSlot())){
			slot5=true;
		}else if("slot6".equals(p.getSlot())){
			slot6=true;
		}else if("slot7".equals(p.getSlot())){
			slot7=true;
		}else if("slot8".equals(p.getSlot())){
			slot8=true;
		}else if("slot9".equals(p.getSlot())){
			slot9=true;
		}else if("slot10".equals(p.getSlot())){
			slot10=true;
		}
	}
;}
%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Parking</title>
    <link rel="stylesheet" href="css/parking.css" />
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

    <div class="parking-container">
      <h2>Society Parking</h2>
      <form action="ParkingSlotsBook" method="post">
      <div class="parking-slots">
        <table>
          <tr>
            <th>SLOT</th>
            <th>BOOK</th>
            <th>SLOT</th>
            <th>BOOK</th>
          </tr>
          <tr>
            <td>1</td>
            <td>
            <%if(park!=null){
            if(uslot1){ 
            out.println("BOOKED BY YOU");
            }else if(slot1){
            out.println("Not Availabe");			
            }else{%>
            <input type="submit" class="booking" value="slot1" name="slot"/>            	
          <%} %>
            <%}else{%>
              <input type="submit" class="booking" value="slot1" name="slot"/>
            <%} %>
            </td>

            <td>2</td>
            <td>
              <%if(park!=null){
            if(uslot2){ 
            out.println("BOOKED BY YOU");
            }else if(slot2){
            out.println("Not Availabe");			
            }else{%>
              <input type="submit" class="booking" value="slot2" name="slot"/>            	
            <%} %>
            <%}else{%>
              <input type="submit" class="booking" value="slot2" name="slot"/>
            <%} %>
            </td>
          </tr>
          <tr>
            <td>3</td>
            <td>
               <%if(park!=null){
            if(uslot3){ 
            out.println("BOOKED BY YOU");
            }else if(slot3){
            out.println("Not Availabe");			
            }else{%>
            <input type="submit" class="booking" value="slot3" name="slot"/>            	
          <%}}else{ %>
            
              <input type="submit" class="booking" value="slot3" name="slot"/>
            <%} %>
            </td>

            <td>4</td>
            <td>
              <%if(park!=null){
            if(uslot4){ 
            out.println("BOOKED BY YOU");
            }else if(slot4){
            out.println("Not Availabe");			
            }else{%>
            <input type="submit" class="booking" value="slot4" name="slot"/>            	
          <%}}else{ %>
          
              <input type="submit" class="booking" value="slot4" name="slot"/>
            <%} %>
            </td>
          </tr>
          <tr>
            <td>5</td>
            <td>
               <%if(park!=null){
            if(uslot5){ 
            out.println("BOOKED BY YOU");
            }else if(slot5){
            out.println("Not Availabe");			
            }else{%>
            <input type="submit" class="booking" value="slot5" name="slot"/>            	
          <%}}else{ %>
           
              <input type="submit" class="booking" value="slot5" name="slot"/>
            <%} %>
            </td>

            <td>6</td>
            <td>
              <%if(park!=null){
            if(uslot6){ 
            out.println("BOOKED BY YOU");
            }else if(slot6){
            out.println("Not Availabe");			
            }else{%>
            <input type="submit" class="booking" value="slot6" name="slot"/>            	
          <%}}else{ %>
          
              <input type="submit" class="booking" value="slot6" name="slot"/>
            <%} %>
            </td>
          </tr>
          <tr>
            <td>7</td>
            <td>
               <%if(park!=null){
            if(uslot7){ 
            out.println("BOOKED BY YOU");
            }else if(slot7){
            out.println("Not Availabe");			
            }else{%>
            <input type="submit" class="booking" value="slot7" name="slot"/>            	
          <%}}else{ %>
              <input type="submit" class="booking" value="slot7" name="slot"/>
            <%} %>
            </td>

            <td>8</td>
            <td>
             <%if(park!=null){
            if(uslot8){ 
            out.println("BOOKED BY YOU");
            }else if(slot8){
            out.println("Not Availabe");			
            }else{%>
            <input type="submit" class="booking" value="slot8" name="slot"/>            	
          <%}}else{ %>
              <input type="submit" class="booking" value="slot8" name="slot"/>
            <%} %>
            </td>
          </tr>
          <tr>
            <td>9</td>
            <td>
               <%if(park!=null){
            if(uslot9){ 
            out.println("BOOKED BY YOU");
            }else if(slot9){
            out.println("Not Availabe");			
            }else{%>
            <input type="submit" class="booking" value="slot9" name="slot"/>            	
          <%}}else{ %>
              <input type="submit" class="booking" value="slot9" name="slot"/>
            <%} %>
            </td>
            <td>10</td>
            <td>
              <%if(park!=null){
            if(uslot10){ 
            out.println("BOOKED BY YOU");
            }else if(slot10){
            out.println("Not Availabe");			
            }else{%>
            <input type="submit" class="booking" value="slot10" name="slot"/>            	
          <%}}else{ %>
              <input type="submit" class="booking" value="slot10" name="slot"/>
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
