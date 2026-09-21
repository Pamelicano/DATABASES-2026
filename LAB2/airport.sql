CREATE TABLE Airline_info (
  airline_id SERIAL PRIMARY KEY,
  airline_code VARCHAR(30),
  airline_name VARCHAR(50),
  airline_country VARCHAR(50),
  created_at TIMESTAMP,
  updated_at TIMESTAMP,
  info VARCHAR(50)
);

CREATE TABLE Airport (
  airport_id SERIAL PRIMARY KEY,
  airport_name VARCHAR(50),
  country VARCHAR(50),
  state VARCHAR(50),
  city VARCHAR(50),
  created_at TIMESTAMP,
  updated_at TIMESTAMP
);

CREATE TABLE Baggage (
  baggage_id SERIAL PRIMARY KEY,
  weight_in_kg DECIMAL(4,2),
  created_at TIMESTAMP,
  updated_at TIMESTAMP,
  booking_id INT
);


CREATE TABLE Baggage_check (
  baggage_check_id SERIAL PRIMARY KEY,
  check_result VARCHAR(50),
  created_at TIMESTAMP,
  updated_at TIMESTAMP,
  booking_id INT,
  passenger_id INT
);