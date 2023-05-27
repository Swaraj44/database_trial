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






