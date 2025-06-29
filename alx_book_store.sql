CREATE DATABASE alx_book_store;

CREATE TABLE Books (
    book_id INT,
    title VARCHAR(130),
    author_id
    price DOUBLE,
    publication_date DATE,
    PRIMARY KEY (book_id),
    FOREIGN KEY (author_id) REFERENCES Authors (author_id)
);

CREATE TABLE Authors (
    author_id,
    author_name VARCHAR(215),
    PRIMARY KEY (author_id)
);

CREATE TABLE Customers (
    customer_id,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT,
    PRIMARY KEY (customer_id)
);

CREATE TABLE Orders (
    order_id,
    customer_id,
    order_date DATE,
    PRIMARY KEY (order_id),
    FOREIGN KEY (customer_id) REFERENCES Customers (customer_id)
);

CREATE TABLE Order_Details (
    orderdetailid,
    order_id,
    book_id,
    quantity DOUBLE,
    PRIMARY KEY (orderdetailid),
    FOREIGN KEY (order_id) REFERENCES Orders (order_id),
    FOREIGN KEY (book_id) REFERENCES Books (book_id)
);