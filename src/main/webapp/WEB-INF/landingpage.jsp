<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Home Page</title>
    <!-- Latest compiled and minified CSS -->
   <!-- <link rel="stylesheet" href="css/bootstrap.min.css" />-->

    <!-- Optional theme -->
   <!-- <link rel="stylesheet" href="css/bootstrap-theme.css" />-->

    <!-- Latest compiled and minified JavaScript -->
   <!-- <script src="js/bootstrap.min.js"></script>-->

    <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
     <meta content="width=device-width, initial-scale=1" name="viewport" />
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>

  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
  .carousel-inner > .item > img {
      width: 70%;
      margin: auto;
  }
        .btn-personal {
            height:100%;
            font-family:'Segoe UI';
            font-size:20px;
            color:white;
            background-color:#001e4f;
            border:none;
            padding:10px;
            transition:all 0.5s ease;
        }
            .btn-personal:hover {
                background-color:white;
                color:black;
            }
        #testCarousel {
            background-color:#b2b0b0;
            color:black;
            font-family:'Segoe UI';
            font-size:30px;
            height:500px;
        }

        .carousel-caption h2 {
            color:white;
            
            font-family:'Segoe UI';
            font-size:30px;
        }
        footer {
            font-family:'Segoe UI';
            font-size:25px;
            background-color:#b2b0b0;
            text-align:center;
        }
        
        #d1{
background-color: rgb(220,220,220);
}

.hovereffect {
  width: 100%;
  height: 100%;
  float: left;
  overflow: hidden;
  position: relative;
  text-align: center;
  cursor: default;
}

.hovereffect .overlay {
  width: 100%;
  height: 100%;
  position: absolute;
  overflow: hidden;
  top: 0;
  left: 0;
  background-color: rgba(75,75,75,0.7);
  -webkit-transition: all 0.4s ease-in-out;
  transition: all 0.4s ease-in-out;
}

.hovereffect:hover .overlay {
  background-color: rgba(48, 152, 157, 0.4);
}

.hovereffect img {
  display: block;
  position: relative;
}

.hovereffect h2 {
  text-transform: uppercase;
  color: #fff;
  text-align: center;
  position: relative;
  font-size: 17px;
  padding: 10px;
  background: rgba(0, 0, 0, 0.6);
  -webkit-transform: translateY(45px);
  -ms-transform: translateY(45px);
  transform: translateY(45px);
  -webkit-transition: all 0.4s ease-in-out;
  transition: all 0.4s ease-in-out;
}

.hovereffect:hover h2 {
  -webkit-transform: translateY(5px);
  -ms-transform: translateY(5px);
  transform: translateY(5px);
}

.hovereffect a.info {
  display: inline-block;
  text-decoration: none;
  padding: 7px 14px;
  text-transform: uppercase;
  color: #fff;
  border: 1px solid #fff;
  background-color: transparent;
  opacity: 0;
  filter: alpha(opacity=0);
  -webkit-transform: scale(0);
  -ms-transform: scale(0);
  transform: scale(0);
  -webkit-transition: all 0.4s ease-in-out;
  transition: all 0.4s ease-in-out;
  font-weight: normal;
  margin: -52px 0 0 0;
  padding: 62px 100px;
}

.hovereffect:hover a.info {
  opacity: 1;
  filter: alpha(opacity=100);
  -webkit-transform: scale(1);
  -ms-transform: scale(1);
  transform: scale(1);
}

.hovereffect a.info:hover {
  box-shadow: 0 0 5px #fff;
}
  </style>
</head>
<body>
    <!--<style>
        .carousel-inner > .item > img,
        .carousel-inner > .item > a > img {
            width:70%;
            margin:auto;
        }
    </style>-->
    <div style="text-align:right;background-color:#001e4f;">
        <div class="container">
            <div class="row">
                    <div style="text-align:left" class="a2a_kit a2a_kit_size_32 a2a_default_style col-xs-12 col-md-9">
                        <a class="a2a_dd" href="https://www.addtoany.com/share"></a>
                        <a class="a2a_button_facebook"></a>
                        <a class="a2a_button_twitter"></a>
                        <a class="a2a_button_google_plus"></a>
                    </div>
                    <script async src="https://static.addtoany.com/menu/page.js"></script>
<!-- AddToAny END -->
                
                <div class="col-xs-12 col-md-3">
                    <button type="button"  style="text-align:right" id="signup" class="btn-personal hidden-xs" >Proceed <span class="glyphicon glyphicon-circle-arrow-right"></span></button> 
                    <button type="button"  style="text-align:right" class="btn-personal hidden-sm hidden-md hidden-lg"><span class="glyphicon-log-in glyphicon"></span></button> 
                </div> 
         </div> 
        </div>
        
        
    </div>
    <header class="jumbotron" style="background-color:#001e4f;font-family:'Segoe UI';color:white;width:100%;">
        <p style="padding:1px;"></p>
        <h1 class="h1" style="text-align:center"><span class="glyphicon-globe glyphicon"></span> &nbsp;Travel Yellow Pages</h1>
        <p style="padding:15px;"></p>
        
        
    </header>
    <!--<div class="col-xs-12">
        <div id="mycarousel" class="carousel slide" data-ride="carousel" style="text-align:center">
                    <ol class="carousel-indicators">
                        <li data-target="#mycarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#mycarousel" data-slide-to="1"></li>
                        
                    </ol>
                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                            <img src="http://www.travelsolutionsltdng.com/wp-content/uploads/2014/10/618882092632899247.jpg" alt="Travel_Tension" />
                            <div class="carousel-caption">
                                <h2>Travel Care Free</h2>
                                <p>You just travel, we are here to take care of your accomodations.</p>
                               
                            </div>
                        </div>
                        <div class="item">
                            <img src="https://images.trvl-media.com/media/content/expus/graphics/launch/activity1320x742.jpg" alt="Best_homes" />
                            <div class="carousel-caption">
                                <h2>The Best directory for Hotels and Accomodation Places <span class="label label-danger label-xs">New</span></h2>
                                <p>The hotels serve as your home in other places and we help you get the best suitable home out there :) </p>
                                
                            </div>
                        </div>
                        
                    </div>
                    <a class="left carousel-control" href="#mycarousel" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#mycarousel" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                    
                </div>
    </div>-->
    
    <div class="container">
        <br />
        <div id="myCarousel" class="carousel slide hidden-xs hidden-sm" data-ride="carousel">
    <!-- Indicators -->
            <ol class="carousel-indicators">
                <li class="active" data-slide-to="0" data-target="#myCarousel"></li>
                <li data-slide-to="1" data-target="#myCarousel"></li>
                <li data-slide-to="2" data-target="#myCarousel"></li>
                
            </ol>

    <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img height="345" src="${cimage}" width="460" />
                    <div class="carousel-caption">
                        <h2>Travel Care Free</h2>
                        <p>You just travel, we are here to take care of your accomodations.</p>
                    </div>

                </div>
                <div class="item">
                    <img alt="Chania" height="345" src="https://images.trvl-media.com/media/content/expus/graphics/launch/activity1320x742.jpg" width="460" />
                    <div class="carousel-caption">
                        <h2>The Best directory for Hotels :)</h2>
                        <p>The hotels serve as your home in other places and we help you get the best suitable home out there :) </p>

                    </div>
                </div>
                <div class="item">
                    <img alt="Flower" height="345" src="http://www.1wallpaperhd.com/wp-content/uploads/Other/FTP1/1280x720/My%20travel%20Wallpapers%20HD%201280x720.jpg" width="460" />
                    <div class="carousel-caption">
                        <h2>Live your Dreams with us !</h2>
                        <p>Travel without care and make most out of your trip, as we take care of the rest! </p>

                    </div>
                </div>
                
            </div>

    <!-- Left and right controls -->
            <a class="left carousel-control" data-slide="prev" href="#myCarousel" role="button"><span aria-hidden="true" class="glyphicon glyphicon-chevron-left"></span><span class="sr-only">Previous</span> </a><a class="right carousel-control" data-slide="next" href="#myCarousel" role="button"><span aria-hidden="true" class="glyphicon glyphicon-chevron-right"></span><span class="sr-only">Next</span> </a>
        </div>
        <p style="padding:18px;"></p>
        
        <div class="col-xs-12">
        
        
            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
    <div class="hovereffect">
        <img class="img-responsive" src="http://q-ec.bstatic.com/images/hotel/840x460/238/23856957.jpg" alt="">
        <div class="overlay">
           <h2>Viceroy Central Park New York</h2>
           <a class="info" href="http://q-ec.bstatic.com/images/hotel/840x460/238/23856957.jpg"></a>
        </div>
    </div>
</div>
        
        
        
        
                    <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
    <div class="hovereffect">
        <img class="img-responsive" src="http://www.hotel-r.net/im/hotel/us/the-pierre-a-taj-hotel-new-york-18.jpg" alt="">
        <div class="overlay">
           <h2>The Pierre, A Taj Hotel, New York</h2>
           <a class="info" href="http://www.hotel-r.net/im/hotel/us/the-pierre-a-taj-hotel-new-york-18.jpg"></a>
        </div>
    </div>
</div>
        
       		           <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
    <div class="hovereffect">
        <img class="img-responsive" src="https://i.ytimg.com/vi/R8Bz6-DsemI/maxresdefault.jpg" alt="">
        <div class="overlay">
           <h2>The Beekman, A Thompson Hotel</h2>
           <a class="info" href="https://i.ytimg.com/vi/R8Bz6-DsemI/maxresdefault.jpg"></a>
        </div>
    </div>
</div>
       
        </div>
        <br><br>
        &nbsp;
        
        <div class="row">
            <div id="d1" class="col-xs-12 col-md-4" style="font-family:'Segoe UI';font-size:30px; border: 2px solid black">
                <fieldset>
                    <legend style="font-family:'Segoe UI';font-size:35px;">The places we serve</legend>
                    <ul>
                        <li>New York - America</li>
                        <li>Pune - India</li>
                        <li>Beijing - China</li>
                    </ul>
                </fieldset>
            </div> 
            <div class="col-xs-12 col-md-2"></div>
            <div id="d1" class="col-xs-12 col-md-6" style="border: 2px solid black;">
                <fieldset>
                    <legend style="font-family:'Segoe UI';font-size:35px;">Our Motto:</legend>
                    <p style="font-family:cursive;font-size:30px;">
                        We aim at gaining the customer trust and keep our data more reliable. The more happy our customers are, the more we gain.
                    </p>
                </fieldset>
            </div>
        </div>
        <p style="padding:10px;"></p>
        <div class="row">
            <h2>Customer Testimonials:</h2>
            <p style="padding:5px;"></p>
            <div class="col-xs-12 col-md-3 " style="margin-left:2%;">
                
                    <div class="well">
                        <span class="glyphicon-bookmark glyphicon"></span><p>The most authentic information on the internet !</p>
                        -<cite>James Smith</cite>
                    </div>
                
            </div> 
            <div class="col-xs-12 col-md-3 col-md-offset-1">
                
                    <div class="well">
                        <span class="glyphicon-bookmark glyphicon"></span><p>Now I can enjoy more freely on my vacations.</p>
                        -<cite>Maria Rodriguez</cite>
                    </div>
                
            </div>
            <div class="col-xs-12 col-md-3 col-md-offset-1">
                
                    <div class="well">
                        <span class="glyphicon-bookmark glyphicon"></span><p>A good way to find Hotels in new city..</p>
                        -<cite>James Johnson</cite>
                    </div>
                
            </div>
        </div>
    </div>
    <p style="padding:30px;"></p>
    <footer>
        <p style="padding:20px;"></p>
        International Yellow Pages �2016-17
        <p style="padding:20px;"></p>
    </footer>
    
    <script type="text/javascript">
    	var sign = document.getElementById("signup");
    	sign.addEventListener("click", toLoginPage);
    
    	function toLoginPage(){
    		location.href = "index";
    	}
    	
    </script>
</body>
</html>