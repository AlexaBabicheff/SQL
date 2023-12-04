create database hwsales;
use hwsales;
create table Sales (saleid int, productid int, year int, quantity int, price int);
create table Product (productid int, productname varchar(10));


insert into Sales (saleid, productid, year, quantity, price) values ('1', '100', '2008', '10', '5000');
insert into Sales (saleid, productid, year, quantity, price) values ('2', '100', '2009', '12', '5000');
insert into Sales (saleid, productid, year, quantity, price) values ('7', '200', '2011', '15', '9000');


insert into Product (productid, productname) values ('100', 'Nokia');
insert into Product (productid, productname) values ('200', 'Apple');
insert into Product (productid, productname) values ('300', 'Samsung');

select * from product;
select * from sales;

-- Task one : 
-- Написать запрос, который выберет марку код и прайс для каждой продажи(каждой sale_id)

select
	t1.productname,
    t1.productid,
	t2.saleid as sale_id
from product t1
inner join sales t2 on t2.productid=t1.productid; 

-- Вид результата :
-- +--------------+-------+-------+
-- | product_name | year  | price |
-- +--------------+-------+-------+
-- | Nokia        | 2008  | 5000  |
-- | Nokia        | 2009  | 5000  |
-- | Apple        | 2011  | 9000  |


-- +--------------+-------+-------+

-- Task two :

-- Вывести количесто всего проданного по продукт id
-- Вид результата :
-- +--------------+----------------+
-- | productid   | totalquantity |
-- +--------------+----------------+
-- | 100          | 22             |
-- | 200          | 15             |
-- +--------------+----------------+

select
	productid,
	quantity as totalquantity
from sales;

-- Task three :
-- Количесто всего проданного по продукт id каждый год 

select
	t1.productname,
	t2.quantity as totalquantity,
    t2.year
from sales t2 
inner join product t1 on t1.productid=t2.productid;

-- Task four:
-- Количесто всего проданного в каждый год по продукт ид
select
	t1.productname,
	t2.quantity as totalquantity,
    t2.year
from sales t2 
inner join product t1 on t1.productid=t2.productid;

-- Task 5 
-- Вывести для каждого продукта его первую продажу


-- Вид результата :
-- +------------+------------+----------+-------+
-- | productid | firstyear | quantity | price |
-- +------------+------------+----------+-------+ 
-- | 100        | 2008       | 10       | 5000  |
-- | 200        | 2011       | 15       | 9000  |


select
	productid,
    year as firstyear,
    quantity,
	price
from sales;