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
  <title>Register User</title>
</head>
<body>
  <div id="box">
    <h1>🙏 Register User 🙏</h1>
    
    <form action="register" method="post">
      Name: <input type="text" name="name"> <br><br>
      Email: <input type="text" name="email"> <br><br>
      Password: <input type="password" name="password"> <br><br>
      <input type="submit" value="Register">
    </form>
  </div>
</body>
</html>