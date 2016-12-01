<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>International Travel Yellow Pages</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

</head>
<body style="width:100%;">
    <style>
        #map {
            width:100%;
            height:500px;
            background-color:grey;
        }
        #col1{
        text-align: right;
        }
    </style>
    
    <header class="jumbotron" style="background-color:#001e4f;font-family:'Segoe UI';color:white;width:100%;">
        <p style="padding:15px;"></p>
        <h1 class="h1" style="text-align:center"><span class="glyphicon-globe glyphicon"></span> &nbsp;International Travel Yellow Pages</h1>
        <p style="padding:15px;"></p>
    </header>
    <p style="padding:15px;"></p>
    <div class="row">
        <div class="col-xs-9 col-sm-9" style="text-align:right">
            <input id="searchTextField" type="text" class="input-lg" style="width:80%" />
        </div> 
        <div class="col-xs-3 col-sm-2">
            <button id="searchBut" class="btn-primary btn-lg btn">Search&nbsp;<span class="glyphicon-search glyphicon"></span></button>
        </div> 
    </div>
    
        
    
    <p style="padding:15px;"></p>
    <div class="mainBody row">
        <div class="mapContainer col-xs-12 col-md-8" style="height:500px;">
            <div id="map">

            </div>
        </div>
        <div class="col-xs-12 col-md-4" style="height:500px;background-color:white;">
<p id="col1"></p>
        </div> 
    </div>

    <p style="padding:150px;"></p>


    <script>
    
    var markLat, markLong;
    
    markLat = [
                <c:forEach var="h" items="${hotelList}">
                	
                    <c:out value="${h.latitude}"/>,
                </c:forEach>
            ];
    console.log(markLat);
    markLong = [
              <c:forEach var="h" items="${hotelList}">
                  <c:out value="${h.longitude}"/>,
              </c:forEach>
            ];
     
            function $(id) {
                return document.getElementById(id);
            }

            $("searchBut").addEventListener("click", onSearch, false);
     
     
    function onSearch(){
     
    location.href= $("searchTextField").value;
     
    //alert("${hotelList.toString()}");
    }
            
            function initMap() {

            	alert(markLat[0] + " " + markLat[1]);
            	var myLatLng = {lat: 18.5158974, lng: 73.8580789};
                var initlatlng = new google.maps.LatLng(markLat[0],markLong[0]);
                var mapOptions = {
                		zoom: 14,
                        center: initlatlng
                };
                var map = new google.maps.Map($('map'), mapOptions);
                var infowindow = new google.maps.InfoWindow(); 
                var marker, i;

                for (i = 0; i < markLat.length; i++) {
                    marker = new google.maps.Marker({
                        position: new google.maps.LatLng(markLat[i], markLong[i]),
                        map: map
                    });

                    google.maps.event.addListener(marker, 'click', (function(marker, i) {
                        return function() {
                            infowindow.setContent(marker[i]);
                            infowindow.open(map, marker);
                        }
                    })(marker, i));
                }
            }

        /* function geolocate() {
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(function (position) {
                    var geolocation = {
                        lat: position.coords.latitude,
                        lng: position.coords.longitude
                    };
                    var circle = new google.maps.Circle({
                        center: geolocation,
                        radius: position.coords.accuracy
                    });
                    autocomplete.setBounds(circle.getBounds());
                });
            }
        } */
       
    </script>
    <script async="async" defer="defer"
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBLxcVy36l3WaCoCm9k33TzBhriQECG9p0&callback=initMap">
    </script>
</body>
</html>
