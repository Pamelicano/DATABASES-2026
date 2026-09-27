DELETE FROM flight 
WHERE EXTRACT(YEAR FROM scheduled_arrival_time) = 2024;

SELECT * from flight