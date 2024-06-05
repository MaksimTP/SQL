-- Session # 1
begin;
select rating from pizzeria where name = 'Pizza Hut';
select rating from pizzeria where name = 'Pizza Hut';
commit;
select rating from pizzeria where name = 'Pizza Hut';



-- Session # 2
begin;
update pizzeria set rating = 3.6 where name = 'Pizza Hut';
commit;
select rating from pizzeria where name = 'Pizza Hut';
