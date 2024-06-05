-- Session # 1
begin;
select sum(rating) from pizzeria;
select sum(rating) from pizzeria;
commit;
select sum(rating) from pizzeria;

-- Session # 2
begin;
insert into pizzeria values (10, 'Kazan Pizza', 5.0);
commit;
select sum(rating) from pizzeria