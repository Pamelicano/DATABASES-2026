update booking
set ticket_price = ticket_price + ticket_price * 0.15;

DELETE from booking
where ticket_price < 10000;

select * from booking