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
 
</head>
<body>
  <div id="box">
    <h1> Login </h1>
    
    <form action="login" method="post">
     
      Email: <input type="text" name="email"> <br><br>
      Password: <input type="password" name="password"> <br><br>
      <input type="submit" value="Login">
    </form>
  </div>
</body>
</html>