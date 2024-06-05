SHOW TRANSACTION ISOLATION LEVEL;

-- Session # 1

begin;
update pizzeria set rating = 5 where name = 'Pizza Hut';
select rating from pizzeria where name = 'Pizza Hut';
commit;

-- Session # 2

-- before commit
select rating from pizzeria where name = 'Pizza Hut';
-- after commit
select rating from pizzeria where name = 'Pizza Hut';

