USE codeup_test_db;


DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
id int UNSIGNED NOT NULL AUTO_INCREMENT,
artist VARCHAR (100),
name VARCHAR (100),
release_date int,
sales DECIMAL (10,3),
genre VARCHAR (50),
PRIMARY KEY (id)
)