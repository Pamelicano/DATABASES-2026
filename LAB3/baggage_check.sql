DELETE FROM baggage_check
WHERE created_at < '2023-06-01'
and check_result = 'Not checked';

insert into baggage_check(check_result, created_at, updated_at)
values ('Not checked', NOW(), NOW())
returning baggage_check_id, created_at;

update baggage_check
set check_result = 'Checked'
where created_at >= '2024-03-01'
	and created_at <= '2024-03-31';

select * from baggage_check