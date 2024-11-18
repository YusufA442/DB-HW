-- 1
select sum(bill_total) as Income from restbill;
-- 2
select sum(bill_total) as Income from restbill where bill_date>"16%" and bill_date<"170000";
-- 3
select avg(bill_total) as AverageBill from restbill;
-- 4
select min(no_of_seats)as Min,Max(no_of_seats) as Max,Avg(no_of_seats) as Avg from restrest_table where room_name="Blue";
-- 5
select distinct table_no from restbill where waiter_no=4 or waiter_no=2;
