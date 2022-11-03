DROP TABLE IF EXISTS customer_order;
DROP TABLE IF EXISTS customer;

CREATE TABLE customer (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    first_name varchar(300) NOT NULL DEFAULT '',
    last_name varchar(300) NOT NULL DEFAULT '',
    email varchar(300) NOT NULL DEFAULT '',
    age int(120) NOT NULL DEFAULT '',
    address varchar(300) NOT NULL DEFAULT '',
    joining_date date NOT NULL DEFAULT '',
    PRIMARY KEY (id)
);

CREATE TABLE customer_order (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    customer_id int(11) unsigned NOT NULL,
    item_name varchar(300) NOT NULL DEFAULT '',
    price DECIMAL(100,2) NOT NULL DEFAULT '',
    PRIMARY KEY (id),
    FOREIGN KEY (customer_id) REFERENCES customer(id)
);