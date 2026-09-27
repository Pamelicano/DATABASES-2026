insert into airline_info(airline_code, airline_name, airline_country, created_at, updated_at)
values ('KAZ', 'KazAir', 'Kazakhstan', NOW(), NOW());

update airline_info
set airline_country = 'Turkey'
where airline_name = 'KazAir';

INSERT INTO airline_info(airline_code, airline_name, airline_country, created_at, updated_at)
VALUES
('AE', 'AirEasy', 'France', NOW(), NOW()),
('FH', 'FlyHigh', 'Brazil', NOW(), NOW()),
('FF', 'FlyFly', 'Poland', NOW(), NOW());

update airline_info
set airline_code = 'UNK'
where airline_code is NULL;

update airline_info
set airline_name = UPPER(airline_name);

update airline_info 
set airline_name = 'Global Airways',
	airline_country = 'United Kingdom',
    updated_at = NOW()
where airline_id = 5;

SELECT * from airline_info
