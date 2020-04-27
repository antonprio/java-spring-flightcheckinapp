<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Reservation Details</title>
</head>
<body>
<h2>Flight Details :</h2>
<table>
    <tr>
        <td>Airlines</td>
        <td>:</td>
        <td>${reservation.flight.operatingAirlines}</td>
    </tr>

    <tr>
        <td>Flight No</td>
        <td>:</td>
        <td>${reservation.flight.flightNumber}</td>
    </tr>

    <tr>
        <td>Departure City</td>
        <td>:</td>
        <td>${reservation.flight.departureCity}</td>
    </tr>

    <tr>
        <td>Arrival City</td>
        <td>:</td>
        <td>${reservation.flight.arrivalCity}</td>
    </tr>

    <tr>
        <td>Date of Departure</td>
        <td>:</td>
        <td>${reservation.flight.dateOfDeparture}</td>
    </tr>

    <tr>
        <td>Estimated Departure Time</td>
        <td>:</td>
        <td>${reservation.flight.estimatedDepartureTime}</td>
    </tr>
</table>

<h2>Passanger Details</h2>
<table>
    <tr>
        <td>Passanger Name</td>
        <td>:</td>
        <td>${reservation.passanger.firstName} ${reservation.passanger.middleName} ${reservation.passanger.lastName}</td>
    </tr>

    <tr>
        <td>Email</td>
        <td>:</td>
        <td>${reservation.passanger.email}</td>
    </tr>

    <tr>
        <td>Phone</td>
        <td>:</td>
        <td>${reservation.passanger.phone}</td>
    </tr>
</table>

<form action="completeCheckIn" method="post">
    <table>
        <tr>
            <td>Enter the number of bags</td>
            <td>:</td>
            <td>
                <input type="text" name="numberOfBags" />
                <input type="hidden" value="${reservation.id}" name="reservationId" />
            </td>
            <td>
                <input type="submit" value="Check In" />
            </td>
        </tr>
    </table>
</form>
</body>
</html>