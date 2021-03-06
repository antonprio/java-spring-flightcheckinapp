package com.antonprio.flightcheckin.integration;

import com.antonprio.flightcheckin.integration.dto.Reservation;
import com.antonprio.flightcheckin.integration.dto.ReservationUpdateRequest;

public interface ReservationRestClient {

    public Reservation findReservation(Long id);

    public Reservation updateReservation(ReservationUpdateRequest request);
}
