DROP DATABASE IF EXISTS `supermarket`;
CREATE DATABASE IF NOT EXISTS `supermarket`;
SHOW DATABASES ;
USE `supermarket`;

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user`(
    id VARCHAR(15),
    user_name VARCHAR(45) NOT NULL DEFAULT 'Unknown',
    position varchar(45),
    password varchar(45),
    address TEXT,
    salary DOUBLE DEFAULT 0.00,
    CONSTRAINT PRIMARY KEY (id,user_name)
    );
SHOW TABLES ;
DESCRIBE `user`;

INSERT INTO `user` VALUES ('U-001','Menaka','Cashier','1234','Galle',25000);
INSERT INTO `user` VALUES ('U-002','Kamal','Admin','2345','Panadura',50000);


DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer`(
    CustId VARCHAR(6),
    CustName VARCHAR(30) NOT NULL DEFAULT 'Unknown',
    CustAddress VARCHAR(30),
    Contact VARCHAR(20),
    CONSTRAINT PRIMARY KEY (CustId)
);
SHOW TABLES ;
DESCRIBE `customer`;

DROP TABLE IF EXISTS Item;
CREATE TABLE IF NOT EXISTS Item(
    ItemCode VARCHAR(6),
    ItemDescription VARCHAR(50),
    qtyOnHand INT (5) DEFAULT 0,
    unitPrice DECIMAL(6,2),
    CONSTRAINT PRIMARY KEY (ItemCode)
);
SHOW TABLES ;
DESCRIBE Item;

DROP TABLE IF EXISTS `Order`;
CREATE TABLE IF NOT EXISTS `Order`(
     orderId VARCHAR(15),
     cId VARCHAR(15),
     orderDate DATE,
     time VARCHAR(15),
     cost DOUBLE,
     CONSTRAINT PRIMARY KEY (orderId),
     CONSTRAINT FOREIGN KEY (cId) REFERENCES `customer`(CustId) ON DELETE CASCADE ON UPDATE CASCADE
);
SHOW TABLES ;
DESCRIBE `Order`;

DROP TABLE IF EXISTS `Order Detail`;
CREATE TABLE IF NOT EXISTS `Order Detail`(
     itemCode VARCHAR(15),
     orderId VARCHAR(15),
     qty INT,
     price DOUBLE,
     CONSTRAINT PRIMARY KEY (itemCode, orderId),
     CONSTRAINT FOREIGN KEY (itemCode) REFERENCES Item(ItemCode) ON DELETE CASCADE ON UPDATE CASCADE ,
     CONSTRAINT FOREIGN KEY (orderId) REFERENCES `Order`(orderId) ON DELETE CASCADE ON UPDATE CASCADE
);
SHOW TABLES ;
DESCRIBE `Order Detail`;

