create database FOODDELIVERYSYSTEM;
USE FOODDELIVERYSYSTEM;
set SQL_SAFE_UPDATES=0;

CREATE TABLE Customers (
 customer_id INT PRIMARY KEY,
 name VARCHAR(100),
 city VARCHAR(50)
);

CREATE TABLE Restaurants (
 restaurant_id INT PRIMARY KEY,
 name VARCHAR(100),
 location VARCHAR(50)
);
CREATE TABLE Menu (
 menu_id INT PRIMARY KEY,
 restaurant_id INT,
 item VARCHAR(100),
 price DECIMAL(10,2),
 FOREIGN KEY (restaurant_id) REFERENCES
Restaurants(restaurant_id)
);
CREATE TABLE Orders (
 order_id INT PRIMARY KEY,
 customer_id INT,
 restaurant_id INT,
 order_date DATE,
 total DECIMAL(10,2),
 FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
 FOREIGN KEY (restaurant_id) REFERENCES
Restaurants(restaurant_id)
);
CREATE TABLE Order_Items (
 order_item_id INT PRIMARY KEY,
 order_id INT,
 item VARCHAR(100),
 quantity INT,
 price DECIMAL(10,2),
 FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

INSERT INTO Customers(customer_id,name,city) VALUES (1, 'SANYA', 'AMRITSAR');
INSERT INTO Customers(customer_id,name,city) VALUES (2, 'NITYA', 'BATHINDA');
INSERT INTO Customers(customer_id,name,city) VALUES (3, 'NARGIS', 'MOHALI');
INSERT INTO Customers(customer_id,name,city) VALUES (4, 'JASHAN', 'HYDERABAD');
INSERT INTO Customers(customer_id,name,city) VALUES (5, 'JAI', 'AJMER');

INSERT INTO Restaurants(restaurant_id,name,location) VALUES(11,'MOB','AMRITSAR');
INSERT INTO Restaurants(restaurant_id,name,location) VALUES(12,'PIZZANO','BATHINDA');
INSERT INTO Restaurants(restaurant_id,name,location) VALUES(13,'SAGAR','AJMER');
INSERT INTO Menu(menu_id,restaurant_id,item,price) VALUES(21,'MOB','','');

INSERT INTO Menu(menu_id,restaurant_id,item,price) VALUES(21,'MOB','SAMOSA','10.00');
INSERT INTO Menu(menu_id,restaurant_id,item,price) VALUES(21,11,'SAMOSA','10.00');
INSERT INTO Menu(menu_id,restaurant_id,item,price) VALUES(22,11,'PANEER TIKKA','150.00');
INSERT INTO Menu(menu_id,restaurant_id,item,price) VALUES(23,11,'KACHORI','15.00');
INSERT INTO Menu(menu_id,restaurant_id,item,price) VALUES(24,11,'DAHI PAPPADI','120.00');
INSERT INTO Menu(menu_id,restaurant_id,item,price) VALUES(25,11,'SANDWICH','30.00');
INSERT INTO Menu(menu_id,restaurant_id,item,price) VALUES(26,12,'FRIED RICE','');
INSERT INTO Menu(menu_id,restaurant_id,item,price) VALUES(26,12,'FRIED RICE','250.00');
INSERT INTO Menu(menu_id,restaurant_id,item,price) VALUES(27,12,'THAI CHICKEN','400.00');
INSERT INTO Menu(menu_id,restaurant_id,item,price) VALUES(28,12,'PHO','250.00');
INSERT INTO Menu(menu_id,restaurant_id,item,price) VALUES(29,12,'VEG PIZZA','300.00');
INSERT INTO Menu(menu_id,restaurant_id,item,price) VALUES(30,12,'NOODLES','350.00');
INSERT INTO Menu(menu_id,restaurant_id,item,price) VALUES(31,13,'DOSA','200.00');
INSERT INTO Menu(menu_id,restaurant_id,item,price) VALUES(32,13,'IDLI','100.00');
INSERT INTO Menu(menu_id,restaurant_id,item,price) VALUES(33,13,'VADA','50.00');
INSERT INTO Menu(menu_id,restaurant_id,item,price) VALUES(34,13,'BHATURE','60.00');
INSERT INTO Menu(menu_id,restaurant_id,item,price) VALUES(35,13,'KULCHA','30.00');
INSERT INTO Order_Items(order_item_id,order_id,item,quantity,price) VALUES();

INSERT INTO Orders(order_id,customer_id,restaurant_id,order_date,total) VALUES(101 ,1 ,11 ,'2025-02-01','100.00');
INSERT INTO Orders(order_id,customer_id,restaurant_id,order_date,total) VALUES(102 ,2, 12,'2025-03-02','240.00');
INSERT INTO Orders(order_id,customer_id,restaurant_id,order_date,total) VALUES(103 ,3 , 13,'2025-03-03','600.00');
INSERT INTO Orders(order_id,customer_id,restaurant_id,order_date,total) VALUES(104 ,4 , 11,'2025-04-04','400.00');
INSERT INTO Orders(order_id,customer_id,restaurant_id,order_date,total) VALUES( 105,5 , 12,'2025-04-05','500.00');
INSERT INTO Orders(order_id,customer_id,restaurant_id,order_date,total) VALUES( 106,1 , 13,'2025-05-06','700.00');
INSERT INTO Orders(order_id,customer_id,restaurant_id,order_date,total) VALUES(107 ,2 , 11,'2025-05-07','750.00');
INSERT INTO Orders(order_id,customer_id,restaurant_id,order_date,total) VALUES(108 ,3 , 12,'2025-06-08','250.00');
INSERT INTO Orders(order_id,customer_id,restaurant_id,order_date,total) VALUES(109 ,4 , 13,'2025-06-09','60.00');
INSERT INTO Orders(order_id,customer_id,restaurant_id,order_date,total) VALUES(110 ,5 , 11,'2025-02-01','120.00');
INSERT INTO Order_Items(order_item_id,order_id,item,quantity,price) VALUES(201 ,101 ,'VADA',2 ,'100.00');
INSERT INTO Order_Items(order_item_id,order_id,item,quantity,price) VALUES(202 ,102 ,'DAHI PAPPADI',2 ,'240.00');
INSERT INTO Order_Items(order_item_id,order_id,item,quantity,price) VALUES(203 ,103 ,'IDLI',6 ,'600.00');
INSERT INTO Order_Items(order_item_id,order_id,item,quantity,price) VALUES(204 ,104 ,'DOSA',2 ,'400.00');
INSERT INTO Order_Items(order_item_id,order_id,item,quantity,price) VALUES(205 ,105 ,'PHO',2 ,'500.00');
INSERT INTO Order_Items(order_item_id,order_id,item,quantity,price) VALUES(206 ,106 ,'DOSA', 3,'600.00');
INSERT INTO Order_Items(order_item_id,order_id,item,quantity,price) VALUES(207 ,107 ,'PHO',3 ,'750.00');
INSERT INTO Order_Items(order_item_id,order_id,item,quantity,price) VALUES(208 ,108 ,'PHO',1 ,'250.00');
INSERT INTO Order_Items(order_item_id,order_id,item,quantity,price) VALUES(209 ,109 ,'BHATURE', 1,'60.0');
INSERT INTO Order_Items(order_item_id,order_id,item,quantity,price) VALUES(210 ,110 ,'DAHI PAPPADI', 1,'120.00');

UPDATE MENU SET PRICE='20.00' WHERE MENU_ID=21;

DELETE FROM CUSTOMERS WHERE CUSTOMER_ID=4;

SELECT O.ORDER_ID,C.NAME,R.NAME,OI.ITEM
FROM CUSTOMERS C
JOIN ORDERS O
ON O.CUSTOMER_ID=C.CUSTOMER_ID
JOIN RESTAURANTS R
ON O.RESTAURANT_ID=R.RESTAURANT_ID
JOIN ORDER_ITEMS OI
ON O.ORDER_ID=OI.ORDER_ID;

SELECT C.NAME,OI.ITEM
FROM CUSTOMERS C
JOIN ORDERS O
ON O.CUSTOMER_ID=C.CUSTOMER_ID
JOIN RESTAURANTS R
ON O.RESTAURANT_ID=R.RESTAURANT_ID
JOIN ORDER_ITEMS OI
ON O.ORDER_ID=OI.ORDER_ID;

select * from menu where price > (select avg(price) from menu);

select name,sum(total) as totals 
from customers c
join orders o
on c.customer_id=o.customer_id
group by c.customer_id
having sum(total) = ( select avg(total) from orders); 
           


select name from restaurants r 
join orders o 
on r.restaurant_id= o.restaurant_id 
group by r.restaurant_id 
having count(order_id) =(
                        select count(order_id) 
                        from orders 
                        group by restaurant_id 
                        order by count(order_id) desc limit 1);

select customer_id, 
   case  
   when sum(total)=500 then 'bronze'
   when sum(total)=500 and sum(total)=600 then 'silver'
   when sum(total)=600 then 'gold'
   end as spendings
   from orders
   group by customer_id;

select r.restaurant_id,rank() over(order by sum(total) desc) as ranking 
from orders o 
join restaurants r
 on r.restaurant_id= o.restaurant_id
 group by o.restaurant_id;

select c.customer_id,rank() over(partition by city order by sum(total) desc) as cusranks 
from orders o 
join customers c 
on c.customer_id= o.customer_id 
group by o.customer_id;

delimiter $$
create trigger updatetotal
  after insert on order_items
  for each row
  begin
  if new.order_item_id
  then insert into orders(order_id,restaurant_id,order_date,total) values(new.order_id,restaurant_id,now(),total);
  end if;
  end $$
  delimiter ;

create temporary table DELETEDORDERS(order_id INT PRIMARY KEY, customer_id INT, restaurant_id INT,order_date DATE,total DECIMAL(10,2))</ENTRY>
delimiter $$
create trigger updatedeleteorder
  after delete on orders
  for each row
  begin
  insert into DELETEDORDERS(order_id, customer_id, restaurant_id,order_date,total) values(new.order_id,customer_id,restaurant_id,now(),total);
  end $$
  delimiter ;

show triggers;

delimiter $$
create temporary table DELETEDORDERS(order_id INT PRIMARY KEY, customer_id INT, restaurant_id INT,order_date DATE,total DECIMAL(10,2));
show triggers;
create trigger updatedeleteorder
  after delete on orders
  for each row
  begin
  insert into DELETEDORDERS(order_id, customer_id, restaurant_id,order_date,total) values(order_id,customer_id,restaurant_id,now(),total)
  end $$
  delimiter ;


create procedure allordersofcustomers()
select c.customer_id,order_date,name,item,quantity,total
from customers c
join orders o
on o.customer_id=c.customer_id
join order_items oi
on o.order_id=oi.order_id;
call allordersofcustomers();

create view topcustomers as
 select c.customer_id,name,sum(total)
 from customers c
 join orders o
 on o.customer_id=c.customer_id
 group by customer_id
 having sum(total)>700;
select * from topcustomers;

create view dailysale as
 select  r.restaurant_id, sum(total) 
 from orders o
 join restaurants r
 on r.restaurant_id=o.restaurant_id
 group by o.restaurant_id;
select * from dailysale;
select  r.restaurant_id, total,order_date 
from orders o
 join restaurants r
 on r.restaurant_id=o.restaurant_id
 group by order_date;
