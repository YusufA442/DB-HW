-- 1
select first_name,surname,bill_date,count(bill_no) as orders_taken
from restBill
inner join restStaff on restBill.waiter_no = restStaff.staff_no
group by first_name, surname, bill_date
having count(bill_no) > 1;
-- 2
select room_name,count(room_name) as tables_count
from restrest_table
where no_of_seats>6
group by room_name;
-- 3
select restrest_table.room_name,count(bill_no)
from restrest_table
inner join restbill on restrest_table.table_no = restbill.table_no
group by room_name;
-- 4
select headwaiter,count(staff_no) as teamSize,sum(r.bill_total)
from reststaff
cross join restaurantdb.restbill r on reststaff.staff_no = r.waiter_no
where headwaiter is not null
group by headwaiter;
-- 5
select cust_name,avg(bill_total)
from restbill
group by cust_name
having avg(bill_total)>400;
-- 6
select first_name,surname,bill_date,count(bill_no) as orders_taken
from restBill
inner join restStaff on restBill.waiter_no = restStaff.staff_no
group by first_name, surname, bill_date
having count(bill_no) > 2;