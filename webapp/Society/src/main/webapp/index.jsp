<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Navbar</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/home.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="shortcut icon" href="media/logo.png" type="image/x-icon">
</head>

<body>
    <header class="top-head">
        <a class="logo" href="/"><img src="media/logo.png" alt="logo" height="60px"></a>
        <nav>
            <ul class="nav-links">
                <li><a href="index.jsp">Home</a></li>
                <li><a href="gym.jsp">Gym</a></li>
                <li><a href="pool.jsp">Pool</a></li>
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
            <a href="gym.jsp">Gym</a>
            <a href="pool.jsp">Pool</a>
            <a href="parking.jsp">Parking</a>
            <a href="login.jsp">Login</a>
        </div>
    </div>

    <div class="container">
        <div id="myCarousel" class="carousel slide" data-ride="carousel" width="100%">
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
            </ol>
            <div class="carousel-inner">

                <div class="item active">
                    <img src="media/gym.jpg" alt="Gym" style="width:100%; height: 75vh;">
                    <div class="carousel-caption">
                        <h3>GYM</h3>
                        <p>Lets workout</p>
                    </div>
                </div>

                <div class="item">
                    <img src="https://www.prosightspecialty.com/wp-content/uploads/2019/10/GettyImages-173542902-webb.jpg" alt="Parking" style="width:100%; height: 75vh;">
                    <div class="carousel-caption">
                        <h3>Parking</h3>
                        <p>Here we Go</p>
                    </div>
                </div>

                <div class="item">
                    <img src="https://cityspideynews.s3.amazonaws.com/uploads/spidey/201606/pool-1-of-1_061716075238.jpg" alt="Pool" style="width:100%; height: 75vh;">
                    <div class="carousel-caption">
                        <h3>Pool</h3>
                        <p>Swimming is Fun</p>
                    </div>
                </div>

                <div class="item">
                    <img src="https://www.german-heart-centre.com/uploads/blog/post/2a3ae5d0e6eb550819fc41fce72c5ea2.jpg" alt="Therapy" style="width:100%; height: 75vh;">
                    <div class="carousel-caption">
                        <h3>Therapy</h3>
                        <p>Any Sort of thing</p>
                    </div>
                </div>
            </div>

            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
    <br>
    <div class="container-card">
        <div class="card">
            <div class="caption">
                <h3>Facility Management</h3>
                <p>Our Facility Management module makes it easy, wherein the member will have an option to make a booking request, can see the rates, time slots, etc. and society will have an option to raise the invoice (for paid services) for all such bookings.
                </p>
                <button><a href="#">Click Here</a></button>
            </div>
        </div>
        <div class="card">
            <div class="caption">
                <h3>Parking</h3>
                <p>Members here can make request for parking only if the parking slots are available else the application goes in queue. </p>
                <button><a href="#">Click Here</a></button>
            </div>
        </div>
        <div class="card">
            <div class="caption">
                <h3>Secret Therapy</h3>
                <p>This enables people to attend the therapeutic lectures without even having to reveal their name 
                    the way this will function is by friends family or even professionals 
                    by acknowledging the difficulties or depressive situation an individual might be in and assigning a therapist or a therapy session for them.</p>
                <button><a href="#">Click Here</a></button>
            </div>
        </div>
        <div class="card">
            <div class="caption">
                <h3>Anonymous Feedback System</h3>
                <p>Anonymous feedback is simply any form of communication where individuals aren’t identified. This helps develop a society of open communication. </p>
                <button><a href="#">Click Here</a></button>
            </div>
        </div>

    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/navbar.js"></script>
</body>

</html>