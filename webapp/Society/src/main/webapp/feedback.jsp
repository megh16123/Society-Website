<!DOCTYPE html>
<%@page import="java.util.List" %>
<%@page import="java.util.Collections" %>
<%@page import="org.hibernate.Query" %> 	
<%@page import="com.helper.FactoryProvider" %>
<%@page import="org.hibernate.Session" %>
<%@page import="com.entities.Feed" %>
<%@page language="java" contentType="text/html;charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>


<% 
Session s = FactoryProvider.getFactory().openSession();
Query q = s.createQuery("from Feed");
List<Feed> feeds =q.list(); 
Collections.reverse(feeds);
%>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Anonymous Feedback</title>
    <link rel="stylesheet" href="css/feedback.css" />
    <link rel="stylesheet" href="css/navbar.css" />
    <link rel="shortcut icon" href="media/logo.png" type="image/x-icon" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />
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
          <li><a class="gym" href="feedback.jsp">Anonymous Feedback</a></li>
          <li><a class="gym" href="therapy.jsp">Secret Therapy</a></li>
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
        <a href="therapy.jsp">Secret Therapy</a>
        <a href="login.jsp">Login</a>
      </div>
    </div>
    <div class="feedback-container">
      <div class="feedback-received">
       <div class="feedback-button">
        <button
          type="button"
          class="btn btn-primary"
          data-bs-toggle="modal"
          data-bs-target="#exampleModal"
          data-bs-whatever="@mdo"
        >
          Add new
        </button>
    </div>
        <div
          class="modal fade"
          id="exampleModal"
          tabindex="-1"
          aria-labelledby="exampleModalLabel"
          aria-hidden="true"
        >
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Feedback</h5>
                <button
                  type="button"
                  class="btn-close"
                  data-bs-dismiss="modal"
                  aria-label="Close"
                ></button>
              </div>
              <div class="modal-body">
                <form method="post" action="AddFeed">
                  <div class="mb-3">
                    <label for="message-text" class="col-form-label"
                      >Add Feedback</label
                    >
                    <textarea class="form-control" name="feedback" required id="message-text"></textarea>
                  </div>
               
              </div>
              <div class="modal-footer">
                <button
                  type="button"
                  class="btn btn-secondary"
                  data-bs-dismiss="modal"
                >
                  Close
                </button>
                <button type="submit" class="btn btn-primary">Add</button>
              </div>
               </form>
            </div>
          </div>
        </div>
        <%for(Feed f:feeds){%>
        
         <div class="feed">
          Anonymous
          <p>
          <%= f.getFeedback() %>
          </p>
        </div>
        
        	<% }%>
      </div>
    </div>
    <script type="text/javascript" src="js/navbar.js"></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
