<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <style type="text/css">
    #box {
      margin: auto;
      width: 500px;
      height: auto;
    }
  </style>
  <meta charset="UTF-8">
  <title>✈️ Fight✈️ </title>
</head>
<body>
  <div id="box">
    <h1> ✈️ Search Flight✈️ </h1>
    
    <form action="searchFlight" method="post">
      From: <input type="text" name="from"> <br><br>
      To: <input type="text" name="to"> <br><br>
      Date: <input type="date" name="date"> <br><br>
      <input type="submit" value="Search">
    </form>
  </div>
</body>
</html>