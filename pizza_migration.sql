USE codeup_test_db;

DROP TABLE IF EXISTS pizza_order;

CREATE TABLE pizza_order(
id int UNSIGNED NOT NULL AUTO_INCREMENT,
orderername VARCHAR (100),
phone_number VARCHAR (10),
orderer_mail VARCHAR (80),
orderer_address VARCHAR (400),
pizza_size VARCHAR (20),
total_cost DECIMAL (4,2),
order_description VARCHAR (600),
isDelivery TINYINT,
created_at DATETIME ,
updated_at DATETIME ,
PRIMARY KEY (id)
)