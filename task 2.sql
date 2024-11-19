--create table customers(customer_id int primary key,
-- customer_name varchar not null,
-- city varchar default 'Nagpur'
-- phone_number int,
-- email varchar,
-- registration_date date
-- );
-- create table orders (order_id int primary key,
-- customer_id int,
-- order_date date,
-- order_amount int, 
-- delivery_city varchar,
-- payment_mode varchar
-- );
-- create table product(product_id int primary key,
-- product_name varchar,
-- category varchar,
-- price int,
-- stock_quantity int,
-- supplier_name varchar,
-- supplier_city varchar,
-- supply_date date
-- );
-- create table order_items(order_item_id int primary key,
-- order_id int,
-- product_id int,
-- quantity int,
-- total_price int
-- );
--copy customers from 'E:/Table.1--customers.csv' delimiter ',' csv header;
-- copy orders from 'E:/Table.2--orders.csv' delimiter ',' csv header;
-- copy order_items from 'E:/Table.4--order_items.csv' delimiter ',' csv header;
-- copy product from 'E:/Table.3--products.csv' delimiter ',' csv header;
--alter table customers alter column phone_number set data type bigint;
-- select distinct city from customers;
--select distinct supplier_name from product;
--select distinct payment_mode from orders;
-- select distinct category from product p join order_items oi on p.product_id = oi.product_id join orders o on oi.order_id = o.order_id;
-- select distinct supplier_city from product p join order_items oi on p.product_id = oi.product_id;

-- select * from customers order by customer_name asc;
-- select * from order_items order by total_price desc;
-- select * from product order by price asc;
 -- select * from product order by category desc;
-- select delivery_city,count(*) as total_order from orders group by delivery_city order by delivery_city asc;
--select order_id, customer_id,order_date from orders order by order_date desc;

--select customer_name from customers limit(10);
-- select product_id,product_name,price from product order by price desc limit(5);
-- select order_id,customer_id from orders order by customer_id asc limit(10) offset(10)
--select order_id,order_date,customer_id from orders where extract(year from order_date)=2023 order by order_date limit(5)
-- select distinct delivery_city from orders order by delivery_city limit(10) offset(10);
-- select count(*) as total_order from orders;
-- select avg(price) as average_price from product;
-- select sum(order_amount) as total_revenue from orders where payment_mode='UPI';
-- select max(order_amount),min(order_amount) from orders where extract (year from order_date)=2023;
select product_id ,sum(quantity) as total_quantity from order_items group by product_id;

-- select supplier_city as city from product
-- union
-- select city from customers;
-- select * from orders where delivery_city ='pune';
-- select * from product where supplier_city='pune'

--select customer_name, city, order_date from customers c join orders o on c.customer_id = o.customer_id where extract (year from order_date)=2023
-- select c.city,p.product_name, p.category,oi.total_price from customers c join orders o on c.customer_id = o.customer_id join order_items oi on o.order_id = oi.order_id join product p on oi.product_id = p.product_id where c.city='Mumbai' 
-- select c.customer_name,o.order_date,oi.total_price from customers c join orders o on c.customer_id = o.customer_id join order_items oi on o.order_id = oi.order_id where o.payment_mode = 'Credit Card'
-- select p.product_name, p.category, oi.total_price from orders o join order_items oi on oi.order_id = o.order_id join product  p on oi.product_id = p.product_id where o.order_date between '2023-01-01' and '2023-06-30'; 
-- select c.customer_name, sum(oi.quantity)as total_products_orderes from customers c join orders o on c.customer_id = o.customer_id join order_items oi on o.order_id = oi.order_id group by c.customer_name

-- select customer_id from orders  where extract (year from order_date)=2022
-- intersect
-- select customer_id from orders where extract (year from order_date)=2023;











