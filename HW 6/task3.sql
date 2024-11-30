--1
select first_name, surname from restbill inner join reststaff on restbill.waiter_no = reststaff.staff_no where cust_name = "Tanya Singh";
--2
select distinct room_date from restroom_management inner join reststaff on restroom_management.headwaiter=reststaff.staff_no where room_date>160200 and room_date<160300;
--3
select first_name,surname from reststaff where headwaiter = (select headwaiter from reststaff where first_name="Zoe" and surname="Ball") and (first_name!="Zoe" and surname!="Ball");
--4
select cust_name,bill_total,first_name,surname from restbill inner join reststaff on restbill.waiter_no=reststaff.staff_no where waiter_no=staff_no order by bill_total desc;
--5
select first_name,surname from restbill inner join reststaff on restbill.waiter_no=reststaff.staff_no where waiter_no=staff_no and (bill_no=00014 or bill_no=17);
--6
select first_name,surname from reststaff where headwaiter=(select headwaiter from restroom_management where room_name="Blue" and room_date="160312") or staff_no=(select headwaiter from restroom_management where room_name="Blue" and room_date="160312");