-- 1
select cust_name from restBill where bill_total>450 and table_no in (select distinct table_no from restRest_table where room_name=(select distinct room_name from restRoom_management where headwaiter=(select staff_no from reststaff where first_name="Charles")));
-- 2
select first_name,surname from reststaff where staff_no=(select headwaiter from reststaff where staff_no=(select waiter_no from restBill where bill_date="160111" and cust_name="Nerida Smith"));
-- 3
select cust_name from restBill where bill_total=(select MIN(bill_total) from restBill);
-- 4
select staff_no from reststaff where staff_no not in (select distinct waiter_no from restBill);
-- 5
select distinct first_name,surname,cust_name,room_name from reststaff inner join restroom_management inner join restbill where staff_no=(select headwaiter from reststaff inner join restbill on reststaff.staff_no = restbill.waiter_no where bill_total = (select max(bill_total) from restBill) ) and cust_name= (select cust_name from restBill where bill_total = (select max(bill_total) from restBill)) and room_name=(select room_name from restRest_table where restRest_table.table_no=(select table_no from restbill where bill_total = (select max(bill_total) from restBill))) and bill_total = (select max(bill_total) from restBill);