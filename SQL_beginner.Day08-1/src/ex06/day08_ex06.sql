-- Session # 1
begin transaction isolation level repeatable read ;
select sum(rating) from pizzeria;
select sum(rating) from pizzeria;
commit;
select sum(rating) from pizzeria;

-- Session # 2
begin transaction isolation level repeatable read ;
insert into pizzeria values (11, 'Kazan Pizza 2', 4.0);
commit ;
select sum(rating) from pizzeria;
