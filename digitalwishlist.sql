CREATE DATABASE digitalwishlist;
USE digitalwishlist;
CREATE TABLE user
(
id 					INT 		NOT NULL 	PRIMARY KEY 	AUTO_INCREMENT,
user_name 			VARCHAR(45) DEFAULT NULL,
user_password 		VARCHAR(45) DEFAULT NULL  
);

CREATE TABLE wishlist
(
id 					INT 		NOT NULL 	PRIMARY KEY 	AUTO_INCREMENT,
user_id				INT			NOT NULL,
wishlist_name		VARCHAR(45) NOT NULL,
								FOREIGN KEY(user_id) REFERENCES user(id)
);

CREATE TABLE wish
(
id 					INT 		NOT NULL 	PRIMARY KEY 	AUTO_INCREMENT,
wishlist_id			INT			NOT NULL,
wish_name			VARCHAR(45)	NOT NULL,
is_reserved			BOOLEAN		NOT NULL,
								FOREIGN KEY(wishlist_id) REFERENCES wishlist(id)
);

INSERT INTO user (id, user_name, user_password) VALUES
(1, 'Philip', 'Philip123'),
(2, 'Noah', 'Noah123'),
(3, 'Oliver', 'Oliver123'),
(4, 'Louis', 'Louis123');

INSERT INTO wishlist (id, user_id, wishlist_name) VALUES
(1, 1, 'Philips wishlist'),
(2, 2, 'Noahs wishlist'),
(3, 3, 'Olivers wishlist'),
(4, 4, 'Louis wishlist');

INSERT INTO wish (id, wishlist_id, wish_name, is_reserved) VALUES
(1, 1, 'Playstation', 0),
(2, 1, 'Money', 0),
(3, 2, 'Xbox 360', 0),
(4, 2, 'Airpods', 0),
(5, 3, 'Macbook', 0),
(6, 3, 'Iphone', 0),
(7, 4, 'Guitar', 0),
(8, 4, 'Headphones', 0);

