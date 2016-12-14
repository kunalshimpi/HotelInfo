<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>International Travel Yellow Pages</title>
<script
  src="https://code.jquery.com/jquery-3.1.1.min.js"
  integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
  crossorigin="anonymous"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>

</head>
<body style="width: 100%;">
	<style>
#map {
margin-left:30px;
	width: 100%;
	height: 500px;
	background-color: grey;
}

button {
	background-color: #eee;
	color: #444;
	cursor: pointer;
	padding: 18px;
	width: 100%;
	border: none;
	text-align: left;
	outline: none;
	font-size: 15px;
	transition: 0.4s;
}

button.active, button:hover {
	background-color: #ddd;
}

div.panel {
	padding: 0 18px;
	display: none;
	background-color: white;
	overflow: hidden;
	opacity: 0;
	transition: 0.6s ease-in-out;
}

button.accordion:after {
	content: '\02795'; /* Unicode character for "plus" sign (+) */
	font-size: 13px;
	color: #777;
	float: right;
	margin-left: 5px;
}

button.accordion.active:after {
	content: "\2796"; /* Unicode character for "minus" sign (-) */
}

div.panel.show {
	opacity: 1;
	max-height: :500px;
}

.paramargin {
	margin: 3px;
}
span.glyphicon-plane {
    font-size: 1.7em;
}
</style>

	<header class="jumbotron"
		style="background-color: #001e4f; font-family: 'Segoe UI'; color: white; width: 100%;">
		<p style="padding: 3px;"></p>
		<h1 class="h1" style="text-align: center">
			<span class="glyphicon-globe glyphicon"></span> &nbsp;
			Travel Yellow Pages
		</h1>
		<p style="padding: 3px;"></p>
	</header>
	<!-- <p style="padding: 5px;"></p> -->
	<div class="row">
	
		<div class="col-xs-9 col-sm-9" style="text-align: right">
		<span class="glyphicon glyphicon-plane"></span>
			<input id="searchTextField" type="text" class="input-lg"
				placeholder="Enter City" style="width: 80%" />
		</div>
		<div class="col-xs-3 col-sm-2">
			<!-- <button id="btnSearch"  class="btn-primary btn-lg btn">
				Search&nbsp;<span class="glyphicon-search glyphicon"></span>
			</button> -->
			 <input id="btnSearch" class="btn-primary btn-lg btn" onclick="myFunction()" type="button" value="search" /> 
		</div>
	</div>

  <!--    <marquee><h2>This is a Travel Yellow Page</h2></marquee>  -->

	<p style="padding: 8px;"></p>
	<div class="mainBody row">
		<div class="mapContainer col-xs-12 col-md-8" style="height: 500px;">
			<div id="map"></div>
		</div>
		<div id="listview" class="listview col-xs-12 col-md-3"
			style="height: 500px; background-color: white; overflow-y: scroll; height: 500px;">

		</div>

	</div>
	<p style="padding: 150px;"></p>


	<script>
    
    function accCollapse()
    {
    var acc = document.getElementsByClassName("accordion");
        var i;
        for (i = 0; i < acc.length; i++) {
            acc[i].onclick = function(){
                this.classList.toggle("active");
                this.nextElementSibling.classList.toggle("show");
                
            }
        }
    }
    
    function onSearch(){
        
       
        location.href= $("searchTextField").value;
        //alert("${hotelList.toString()}");
    }
    var markLat, markLong,hotelnames;
    
   /*  markLat = [
                <c:forEach var="h" items="${hotelList}">
               
                    <c:out value="${h.latitude}"/>,
                </c:forEach>
            ];
    console.log(markLat);
    markLong = [
              <c:forEach var="h" items="${hotelList}">
                  <c:out value="${h.longitude}"/>,
              </c:forEach>
            ]; */
            function $(id) {
                return document.getElementById(id);
            }

          /*   $("searchBut").addEventListener("click", onSearch, false); */
     
   /*  function onSearch(){
    //location.href= $("searchTextField").value;
    
     
    } */
    
    var map;
    var infowindow;
	var service;
	var details1 =[];
    function initMap(latt,longt) {
      var pyrmont = {lat: latt, lng: longt};

      map = new google.maps.Map(document.getElementById('map'), {
        center: pyrmont,
        zoom: 13
      });

      infowindow = new google.maps.InfoWindow();
     service = new google.maps.places.PlacesService(map);
      service.nearbySearch({
        location: pyrmont,
        radius: 5000,
        type: ['hotel']
      }, callback);
    }

    function callback(results, status) {
      if (status === google.maps.places.PlacesServiceStatus.OK) {
        for (var i = 0; i < results.length; i++) {
          createMarker(results[i]);
        }
      }
    }

    function createMarker(place) {
        var placeLoc = place.geometry.location;
        var marker = new google.maps.Marker({
          map: map,
          position: place.geometry.location
        });

        var request = { reference: place.reference };
        service.getDetails(request, function(details, status) {
        	
          google.maps.event.addListener(marker, 'click', function() {
            infowindow.setContent(place.name + "<br />" + "Address: " +details.formatted_address +"<br />"  + "Rating: "+ details.rating);
            infowindow.open(map, this);
           
          });
          var btn = document.createElement("BUTTON");  
          
          btn.setAttribute("class","accordion");
          btn.setAttribute("onclick","accCollapse()");
          var t = document.createTextNode(place.name);
          
          btn.appendChild(t);
           
          $('listview').appendChild(btn);
            
               
          var div1 = document.createElement("DIV");
        
          div1.setAttribute("class","panel");
      
          
          var par1 = document.createElement("P");
          par1.setAttribute("class","paramargin");
          var txt1 = document.createTextNode("Address: " +details.formatted_address );
          par1.appendChild(txt1);
          
          
          var par2 = document.createElement("P");
          par2.setAttribute("class","paramargin");
          var txt2 = document.createTextNode(" " );
          par2.appendChild(txt2);
          
          var par3 = document.createElement("P");
          par3.setAttribute("class","paramargin");
          var txt3 = document.createTextNode("Rating:" + details.rating );
          par3.appendChild(txt3);
          
          
          
          div1.appendChild(par1);
          div1.appendChild(par2);
          div1.appendChild(par3);
          
          $('listview').appendChild(div1);
        });
             
              
     
    }
         /*   function initMap() {

            // alert(markLat[0] + " " + markLat[1]);
            var myLatLng = {lat: 18.5158974, lng: 73.8580789};
                var initlatlng = new google.maps.LatLng(markLat[0],markLong[0]);
                var mapOptions = {
                zoom: 14,
                        center: initlatlng
                };
                var map = new google.maps.Map($('map'), mapOptions);
                var infowindow = new google.maps.InfoWindow(); 
                var marker, i;
                var html = [];
                var j=0;
                <c:forEach var="h" items="${hotelList}">
        var name="${h.hotelName}";
        var address="${h.address}";
        html[j] = "<b>" + name + "</b> <br/>" + address;
        j++;
        </c:forEach>
                for (i = 0; i < markLat.length; i++) {
                    marker = new google.maps.Marker({
                        position: new google.maps.LatLng(markLat[i], markLong[i]),
                        map: map
                    });
                    
                    google.maps.event.addListener(marker, 'click', (function(marker, i) {
                        return function() {
                        var acc = document.getElementsByClassName("accordion");
                            
                            acc[i].click();
                            acc[i].focus();
                            infowindow.setContent(html[i]);
                            infowindow.open(map, marker, html[i]);
                           
                        }
                    })(marker, i));
                }
                window.onload=function(e){
               
                <c:forEach var="h" items="${hotelList}">
               
                   var btn = document.createElement("BUTTON");  
                   
                   btn.setAttribute("class","accordion");
                   btn.setAttribute("onclick","accCollapse()");
                   var t = document.createTextNode("${h.hotelName}");
                   
                   btn.appendChild(t);
                    
                   $('listview').appendChild(btn);
                     
                        
                   var div1 = document.createElement("DIV");
                 
                   div1.setAttribute("class","panel");
               
                   
                   var par1 = document.createElement("P");
                   par1.setAttribute("class","paramargin");
                   var txt1 = document.createTextNode("Address: ${h.address}" );
                   par1.appendChild(txt1);
                   
                   
                   var par2 = document.createElement("P");
                   par2.setAttribute("class","paramargin");
                   var txt2 = document.createTextNode("Telephone: ${h.telephone} " );
                   par2.appendChild(txt2);
                   
                   var par3 = document.createElement("P");
                   par3.setAttribute("class","paramargin");
                   var txt3 = document.createTextNode("Rating: ${h.rating}" );
                   par3.appendChild(txt3);
                   
                   
                   
                   div1.appendChild(par1);
                   div1.appendChild(par2);
                   div1.appendChild(par3);
                   
                   $('listview').appendChild(div1);
                       
                    </c:forEach>
                };
            }*/
            
            
            
    </script>
    
    
    <script type="text/javascript">
function myFunction(){
	
	
		var t = document.getElementById("searchTextField").value;
		  	
		    var geocoder =  new google.maps.Geocoder();
		geocoder.geocode( { 'address': t}, function(results, status) {
		  if (status == google.maps.GeocoderStatus.OK) {
		    var lat = results[0].geometry.location.lat() ;var lng = results[0].geometry.location.lng(); 
		    var node = $('listview');
		    while(node.firstChild){
		    	node.removeChild(node.firstChild);
		    }
		    initMap(lat,lng);
		  } else {
		    alert("Something got wrong " + status);
		  }
		});

};
</script>
    
	<script async="async" defer="defer"
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBLxcVy36l3WaCoCm9k33TzBhriQECG9p0&libraries=places">
    </script>
    
  
</body>
</html>