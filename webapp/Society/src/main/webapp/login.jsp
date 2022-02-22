<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Clubhouse Login</title>
    <link rel="stylesheet" href="css/login.css" />
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
          <li><a  href="index.jsp">Home</a></li>
          <li><a  href="gym.jsp">Gym</a></li>
          <li><a  href="pool.jsp">Pool</a></li>
          <li><a href="parking.jsp">Parking</a></li>
          <li><a href="feedback.jsp">Anonymous Feedback</a></li>
          <li><a  href="therapy.jsp">Secret Therapy</a></li>
          <li><a  href="login.jsp">Login</a></li>
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
    <div class="login-container">
      <form action="LoginAuth" method="post" class="login-form">
        <h2>Login</h2>
        <div class="input-container">
          <div class="input-label">
            <label for="email">Username:</label>
            <input type="text" name="username" />
          </div>
          <div class="input-label">
            <label for="password">Password:</label>
            <input type="password" name="password" />
          </div>
          <button class="submit" type="submit">Submit</button>
        </div>
      </form>
    </div>
    <script type="text/javascript" src="js/navbar.js"></script>
  </body>
</html>
