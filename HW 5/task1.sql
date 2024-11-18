-- 1
select bill_date,bill_total from restbill where cust_name = "Bob Crow";
-- 2
select distinct cust_name from restbill where cust_name LIKE "%Smith" order by cust_name desc;
-- 3
select distinct cust_name from restbill where cust_name LIKE "% C%";
-- 4
select first_name,surname from reststaff where headwaiter is NULL;
-- 5
select * from restbill where bill_date>"160200" and bill_date<"160300";
-- 6
select distinct bill_date from restbill where bill_date>"15%" and bill_date<"160000";