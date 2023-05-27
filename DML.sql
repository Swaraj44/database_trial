INSERT INTO customers VALUES(1, 'John Abraham','john@gmail.com', '1234567890', 'Khulna', TO_DATE('1990-01-01', 'YYYY-MM-DD'));
INSERT INTO customers VALUES(2, 'Jane hasslewood','jane@gmail.com', '9876543210', 'Dhaka', TO_DATE('1985-05-10', 'YYYY-MM-DD'));
INSERT INTO customers VALUES(3, 'Michael Johnson', 'michael@gmail.com', '5558755555', 'Rangpur', TO_DATE('1992-09-15', 'YYYY-MM-DD'));
INSERT INTO customers VALUES(4, 'Swaraj Biswas', 'biswas@gmail.com', '4321111111', 'Dinajpur', TO_DATE('1990-01-01', 'YYYY-MM-DD'));
INSERT INTO customers VALUES(5, 'Rafi', 'rafi@gmail.com', '9876565656', 'Dinajpur', TO_DATE('1990-10-01', 'YYYY-MM-DD'));
INSERT INTO customers VALUES(6, 'Atik', 'atik@gmail.com', '9898787887', 'Dhaka', TO_DATE('2002-10-01', 'YYYY-MM-DD'));
INSERT INTO customers VALUES(7, 'Robied', 'robied@gmail.com', '1233214567', 'Rajshahi', TO_DATE('1994-12-01', 'YYYY-MM-DD'));
INSERT INTO customers VALUES(8, 'Arghya', 'arghya@gmail.com', '7664777832', 'Sylhet', TO_DATE('2001-01-01', 'YYYY-MM-DD'));
INSERT INTO customers VALUES(9, 'Pantha', 'pantha@gmail.com', '9080798734', 'Dhaka', TO_DATE('1998-11-01', 'YYYY-MM-DD'));
INSERT INTO customers VALUES(10, 'Arif', 'arif@gmail.com', '7654567894', 'Rajshahi', TO_DATE('2000-01-11', 'YYYY-MM-DD'));


INSERT INTO products VALUES(1, 'Shirt', 'cotton shirt', 19, 'Apparel');
INSERT INTO products VALUES(2, 'Jeans', 'Stylish jeans', 49, 'Apparel');
INSERT INTO products VALUES(3, 'Sneakers', 'Sporty sneakers', 59, 'Footwear');
INSERT INTO products VALUES(4, 'Watch', 'Elegant wristwatch', 99.99, 'Accessories');
INSERT INTO products VALUES(5, 'Dress', 'Fashionable dress', 79.99, 'Apparel');
INSERT INTO products VALUES(6, 'Backpack', 'Durable backpack', 39, 'Accessories');
INSERT INTO products VALUES(7, 'Headphones', 'Wireless headphones', 129.99, 'Electronics');
INSERT INTO products VALUES(8, 'Skirt', 'Mini skirt', 29, 'Apparel');
INSERT INTO products VALUES(9, 'Sunglasses', 'Stylish sunglasses', 49, 'Accessories');
INSERT INTO products VALUES(10, 'Tennis Shoes', 'High-performance tennis shoes', 89.99, 'Footwear');





INSERT INTO orders VALUES(1, 1, 1, TO_DATE('2023-01-10', 'YYYY-MM-DD'), 2, 'Pending');
INSERT INTO orders VALUES(2, 2, 3, TO_DATE('2023-02-15', 'YYYY-MM-DD'), 1, 'Shipped');
INSERT INTO orders VALUES(3, 1, 2, TO_DATE('2023-03-02', 'YYYY-MM-DD'), 3, 'Pending');
INSERT INTO orders VALUES(4, 3, 4, TO_DATE('2023-01-25', 'YYYY-MM-DD'), 1, 'Pending');
INSERT INTO orders VALUES(5, 2, 1, TO_DATE('2023-02-18', 'YYYY-MM-DD'), 2, 'Shipped');
INSERT INTO orders VALUES(6, 1, 5, TO_DATE('2023-03-10', 'YYYY-MM-DD'), 1, 'Pending');
INSERT INTO orders VALUES(7, 3, 2, TO_DATE('2023-01-05', 'YYYY-MM-DD'), 2, 'Shipped');
INSERT INTO orders VALUES(8, 1, 4, TO_DATE('2023-02-28', 'YYYY-MM-DD'), 1, 'Pending');
INSERT INTO orders VALUES(9, 2, 6, TO_DATE('2023-03-05', 'YYYY-MM-DD'), 2, 'Shipped');
INSERT INTO orders VALUES(10, 3, 3, TO_DATE('2023-01-15','YYYY-MM-DD'), 1, 'Pending');




INSERT INTO payments VALUES(1, 1, 38, TO_DATE('2023-01-12', 'YYYY-MM-DD'));
INSERT INTO payments VALUES(2, 2,59, TO_DATE('2023-02-20', 'YYYY-MM-DD'));
INSERT INTO payments VALUES(3, 3,147, TO_DATE('2023-03-03', 'YYYY-MM-DD'));
INSERT INTO payments VALUES(4, 4,99.99, TO_DATE('2023-01-28', 'YYYY-MM-DD'));
INSERT INTO payments VALUES(5, 5,38, TO_DATE('2023-02-20', 'YYYY-MM-DD'));
INSERT INTO payments VALUES(6, 6,79.99, TO_DATE('2023-03-12', 'YYYY-MM-DD'));
INSERT INTO payments VALUES(7, 7,98, TO_DATE('2023-01-07', 'YYYY-MM-DD'));
INSERT INTO payments VALUES(8, 8, 99.99, TO_DATE('2023-03-01', 'YYYY-MM-DD'));
INSERT INTO payments VALUES(9, 9,78, TO_DATE('2023-03-08', 'YYYY-MM-DD'));
INSERT INTO payments VALUES(10, 10, 59, TO_DATE('2023-01-17', 'YYYY-MM-DD'));




---Displaying table data using SELECT command
select * from payments 
WHERE amount>50;


---Updating the data in a table
update payments set amount=100 where amount=99.99;

---Deleting row from a table
INSERT INTO orders VALUES(30, 3, 3, TO_DATE('2023-01-15','YYYY-MM-DD'), 10, 'Pending');
INSERT INTO payments VALUES(15, 30,380, TO_DATE('2023-12-20', 'YYYY-MM-DD'));
delete from  payments where payment_id=15;


---Save the SQL command output in csv file
SET MARKUP XML ON
SET HEADING OFF
SET PAGESIZE 0
SET FEEDBACK OFF
SPOOL C:\Users\DELL\Desktop\DB Lab Project\database_trial\file1.csv
SELECT *
FROM payments;
SPOOL OFF




---Save the SQL command output in xml file
SET COLSEP ","
SET HEADING OFF
SET PAGESIZE 0
SET FEEDBACK OFF
SPOOL C:\Users\DELL\Desktop\DB Lab Project\database_trial\file2.csv
SELECT *
FROM payments;
SPOOL OFF

---Save the SQL command output in txt file
SPOOL C:\Users\DELL\Desktop\DB Lab Project\database_trial\file3.txt
SELECT *
FROM payments;
SPOOL OFF


-----Aggregate function

---count how many row exist in products table
select count(*) 
from customers;


select count(customer_id) as number_of_customers
from customers;

select avg(amount) from payments;
select sum(amount) from payments;
select max(amount) from payments;
select min(amount) from payments;



---Group by and Having

select customer_id,sum(quantity)
from orders 
group by customer_id;

                               ---prompt *=*=*=*=*=*=*=*= Chaecking *=*=*=*=*=*=*=*=*=*=*=*=

select customer_id,sum(quantity)
from orders 
group by customer_id
having sum(quantity)>5;


---Nested subquery

---A order of which customer

 select name 
 from customers
 where customer_id=(select customer_id 
 from orders
 where order_id=5);

 commit;


 



---Retrieve all customers and their associated orders:
select c.customer_id, c.name, o.order_id, o.order_date, o.status
from customers c
JOIN orders o ON c.customer_id = o.customer_id;



---Get the total number of orders placed by each customer:
select c.customer_id, c.name, COUNT(o.order_id) AS order_count
from customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name;



---List all products along with their categories:
select p.product_id, p.name, p.category
from products p;



---Retrieve the details of a specific order and its associated customer information:
select o.order_id, o.order_date, o.status, c.name AS customer_name, c.email, c.phone
from orders o
JOIN customers c ON o.customer_id = c.customer_id
WHERE o.order_id = 1;



---Calculate the total amount paid for each order:
select o.order_id, SUM(p.amount) AS total_amount_paid
from orders o
JOIN payments p ON o.order_id = p.order_id
GROUP BY o.order_id;



---Retrieve all customers who have placed orders:
select c.customer_id, c.name, c.email
from customers c
WHERE EXISTS (
    select 1
    from orders o
    WHERE o.customer_id = c.customer_id
);



---List all orders along with the corresponding customer and product details:
select o.order_id, c.name AS customer_name, p.name AS product_name, o.quantity, o.order_date
from orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON o.product_id = p.product_id;




---Get the total revenue generated by each product category:
select p.category, SUM(o.quantity * p.price) AS revenue
from orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.category;


---Retrieve the latest order placed by each customer:
select c.customer_id, c.name, o.order_id, o.order_date
from customers c
JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_date = (
    select MAX(order_date)
    from orders
    WHERE customer_id = c.customer_id
);




---creating Myview

CREATE VIEW Myview11 AS
select c.customer_id,c.name AS customer_name,c.email,c.phone,c.address,c.date_of_birth,
    p.product_id,p.name AS product_name,p.description,p.price,p.category,
    o.order_id,o.order_date,o.quantity,o.status,
    pm.payment_id,pm.amount,pm.payment_date
from customers c
    JOIN orders o ON c.customer_id = o.customer_id
    JOIN products p ON o.product_id = p.product_id
    LEFT JOIN payments pm ON o.order_id = pm.order_id;


---select * from Myview11;

---payments done between dates

SELECT customer_name, product_name, amount, payment_date
FROM Myview11
WHERE payment_date >= TO_DATE('2023-01-01', 'YYYY-MM-DD') 
AND payment_date <= TO_DATE('2023-12-31', 'YYYY-MM-DD');