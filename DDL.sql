drop TABLE payments;
drop TABLE orders;
drop TABLE customers;
drop TABLE products;


CREATE TABLE customers (
  customer_id NUMBER(10) PRIMARY KEY,
  name VARCHAR2(100) NOT NULL,
  email VARCHAR2(100) NOT NULL,
  phone VARCHAR2(20),
  address VARCHAR2(200),
  date_of_birth DATE
);

CREATE TABLE products (
  product_id NUMBER(10) PRIMARY KEY,
  name VARCHAR2(100) NOT NULL,
  description VARCHAR2(1000),
  price NUMBER(10,2) NOT NULL,
  category VARCHAR2(100)
);

CREATE TABLE orders (
  order_id NUMBER(10) PRIMARY KEY,
  customer_id NUMBER(10) REFERENCES customers(customer_id) ON DELETE CASCADE,
  product_id NUMBER(10) REFERENCES products(product_id) ON DELETE CASCADE,
  order_date DATE NOT NULL,
  quantity NUMBER(10) NOT NULL,
  status VARCHAR2(20) NOT NULL
);

CREATE TABLE payments (
  payment_id NUMBER(10) PRIMARY KEY,
  order_id NUMBER(10) REFERENCES orders(order_id) ON DELETE CASCADE UNIQUE ,
  amount NUMBER(10,2) NOT NULL,
  payment_date DATE NOT NULL
);





---Add column in the table
alter table payments add Payment_type char(20);

---Modify column definition in the table
alter table payments modify Payment_type varchar(10);

---Rename the column name
alter table payments rename column Payment_type to PaymentType;

---Drop the column from table
alter table payments drop column PaymentType;




