CREATE DATABASE `practice1` DEFAULT CHARACTER SET UTF8;

USE practice1;
DROP TABLE IF EXISTS productins;

CREATE TABLE productins
(   product_id char(4) NOT NULL,
	product_name varchar(100) NOT NULL,
	product_type varchar(32) NOT NULL,
	sale_price integer DEFAULT 0,
	---------------销售价格的默认值为0--------------
	purchase_price integer,
	regist_date DATE,
	PRIMARY KEY(product_id));
/*
CREATE TABLE productins
(product_id    CHAR(4)      NOT NULL,
product_name   VARCHAR(100) NOT NULL,
product_type   VARCHAR(32)  NOT NULL,
sale_price     INTEGER      DEFAULT 0,
purchase_price INTEGER ,
regist_date    DATE ,
PRIMARY KEY (product_id)); 
*/

-- 将商品表中的数据复制到商品复制表中

/*
INSERT INTO productocpy (product_id, product_name, product_type, sale_price, purchase_price, regist_date)
SELECT product_id, product_name, product_type, sale_price, 
purchase_price, regist_date
FROM Product;  
*/

INSERT INTO productins VALUES ('0005','高压锅','厨房用具','6800','5000','2019-01-15');
INSERT INTO productins VALUES ('0002','打孔器','办公用品','500','320','2009-09-11');	
INSERT INTO productins VALUES ('0003', '运动T恤', '衣服', '4000', '2800', NULL);
INSERT INTO productins VALUES ('0004', '菜刀', '厨房用具', '3000', '2800', '2009-09-20');
INSERT INTO productins VALUES('0007', '擦菜板', '厨房用具', '880', '790', '2008-04-28');
INSERT INTO productins VALUES('0008', '圆珠笔', '办公用品', '100', NULL, '2009-11-11');
--单行insert语句--------------------------------------------------------------------
INSERT INTO productins VALUES 
('0006', '叉子', '厨房用具', '500', NULL, '2009-09-20'),
('0009', '勺子', '厨房用具', '500', NULL, '2009-09-21');
--多行insert语句---------------------------------------------------------------------
