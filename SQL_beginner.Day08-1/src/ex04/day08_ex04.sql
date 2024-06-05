-- Session # 1
begin transaction isolation level serializable;
select rating from pizzeria where name = 'Pizza Hut';
select rating from pizzeria where name = 'Pizza Hut';
commit;
select rating from pizzeria where name = 'Pizza Hut';


-- Session # 2
begin transaction isolation level serializable;
update pizzeria set rating = 3 where name = 'Pizza Hut';
commit;
select rating from pizzeria where name = 'Pizza Hut';
