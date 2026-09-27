delete from airport
where state is NULL
and city in ('Mlawe, Kepuh');

update airport
set state = 'Capital District'
where city in ('Astana', 'Tokyo', 'London');

select * from airport
