CREATE TABLE Airlines (
  airline_id INT PRIMARY KEY,
  airline_name VARCHAR(100)
);

CREATE TABLE Airports (
  airport_id INT PRIMARY KEY,
  airport_name VARCHAR(100),
  city VARCHAR(100)
);

CREATE TABLE Flights (
  flight_id INT PRIMARY KEY,
  airline_id INT,
  departure_airport_id INT,
  arrival_airport_id INT,
  FOREIGN KEY (airline_id) REFERENCES Airlines(airline_id),
  FOREIGN KEY (departure_airport_id) REFERENCES Airports(airport_id),
  FOREIGN KEY (arrival_airport_id) REFERENCES Airports(airport_id)
);

CREATE TABLE Passengers (
  passenger_id INT PRIMARY KEY,
  passenger_full_name VARCHAR(100),
  passenger_passport_number VARCHAR(50)
);

CREATE TABLE Bookings (
  booking_id INT PRIMARY KEY,
  passenger_id INT,
  flight_id INT,
  ticket_price DECIMAL(10,2),
  FOREIGN KEY (passenger_id) REFERENCES Passengers(passenger_id),
  FOREIGN KEY (flight_id) REFERENCES Flights(flight_id)
);

CREATE TABLE Booking_Seats (
  booking_id INT,
  seat_number VARCHAR(5),
  PRIMARY KEY (booking_id, seat_number),
  FOREIGN KEY (booking_id) REFERENCES Bookings(booking_id)
);


-- =========================

INSERT INTO Airlines VALUES
(1, 'Air Astana'),
(2, 'Lufthansa'),
(3, 'Turkish Airlines');

INSERT INTO Airports VALUES
(1, 'Almaty Airport', 'Almaty'),
(2, 'Astana Airport', 'Astana'),
(3, 'Frankfurt Airport', 'Frankfurt'),
(4, 'Istanbul Airport', 'Istanbul');

INSERT INTO Flights VALUES
(1, 1, 1, 2),
(2, 2, 3, 1),
(3, 3, 4, 1),
(4, 1, 2, 1),
(5, 2, 1, 3);

INSERT INTO Passengers VALUES
(1, 'Ivan Ivanov', 'P10001'),
(2, 'Anna Petrova', 'P10002'),
(3, 'John Smith', 'P10003'),
(4, 'Ali Khan', 'P10004'),
(5, 'Maria Garcia', 'P10005');

INSERT INTO Bookings VALUES
(1, 1, 1, 500.00),
(2, 2, 2, 650.00),
(3, 3, 3, 550.00),
(4, 4, 4, 300.00),
(5, 5, 5, 700.00);

INSERT INTO Booking_Seats VALUES
(1, '12A'),
(1, '12B'),
(2, '14C'),
(3, '10A'),
(4, '8B'),
(5, '16D');