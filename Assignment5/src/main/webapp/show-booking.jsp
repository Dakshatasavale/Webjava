<%@page import="com.airline.dao.BookingDao"%>
<%@page import="com.airline.entity.Booking"%>
<%@page import="com.airline.entity.Flight"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Show Booking</title>
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
	<%
List<Booking> bookings = new BookingDao().getAllFlights();
%>

		<% for (Booking booking : bookings) { %>
		<h1>
			ID: <%= booking.getId() %> 
			Flight ID: <%= booking.getFlightId() %> 
			User ID: <%= booking.getUserId() %> 
			Booking Date: <%= booking.getBookingDate() %>
		</h1>
		<form action="cancleBooking" method="post">
		<input type="hidden" name="bookingId" value=<%= booking.getId() %>> 
		<button>Cancle</button>
		</form>
	<% } %>
</body>
</html>