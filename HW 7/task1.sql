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
select concat(first_name,surname) as headwaiter_name, SUM(bill_total) as total_sum
from restbill rb
cross join reststaff rs on rb.waiter_no = rs.staff_no
where headwaiter is not null
group by headwaiter;

select * from teamTotals;

-- 4
select headwaiter,count(staff_no) as teamSize,sum(r.bill_total)
from reststaff
cross join restaurantdb.restbill r on reststaff.staff_no = r.waiter_no
where headwaiter is not null
group by headwaiter;