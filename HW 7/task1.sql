-- 1
create or replace view samBills as
select first_name,surname,bill_date,cust_name,bill_total
from reststaff
inner join restbill on reststaff.staff_no = restbill.waiter_no
where first_name='Sam' and surname='Pitt';
-- 2
select *
from samBills
where bill_total>400;
-- 3
create or replace view roomTotals as
select room_name,SUM(bill_total) as total_sum
from restrest_table
inner join restbill
group by room_name;
-- 4
create or replace view teamTotals as
select concat(headwaiters.first_name,' ',headwaiters.surname) as headwaiter_name,sum(bills.bill_total) as total_sum
from reststaff headwaiters
inner join reststaff waiters on headwaiters.staff_no=waiters.headwaiter
inner join restaurantdb.restbill bills on waiters.staff_no = bills.waiter_no
where waiters.headwaiter is not null
group by waiters.headwaiter;

select * from teamTotals;
