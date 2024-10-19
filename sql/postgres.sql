select id, name, price from products;
select * from products;
select id AS products_id, is_sale AS on_sale from products;
select * from products WHERE id = 10;
select * from products WHERE name = 'Keyboard';
select * from products WHERE id < 10;
select * from products WHERE price >= 10;
select * from products WHERE price >= 10 AND price <=100;
select * from products WHERE inventory != 0;
select * from products WHERE price = 10 OR price = 15;
select * from products WHERE price IN (10, 15,20);
select * from products WHERE name LIKE '%TV%';
select * from products WHERE name NOT LIKE '%TV%';
select * from products ORDER BY price;
select * from products ORDER BY price ASC;
select * from products ORDER BY price DESC;
select * from products ORDER BY inventory DESC, price ASC;
select * from products WHERE price > 20 ORDER BY created_at DESC;
select * from products WHERE price > 10 LIMIT 5;
select * from products ORDER BY id LIMIT 5 OFFSET 2;

INSERT INTO products (name, price, inventory) VALUES ('tablet', 1800, 50) returning id;
INSERT INTO products (name, price, inventory) VALUES ('tablet', 1800, 50), ('glass', 12, 100) returning *;

DELETE FROM products WHERE id = 11 RETURNING *;
DELETE FROM products WHERE id = 11;
DELETE FROM products WHERE inventory = 0 RETURNING *; 

UPDATE products SET name = 'pizza', price = 40 WHERE id = 13 RETURNING *;
UPDATE products SET is_sale = false WHERE id = 13 RETURNING *;

-- http://localhost:8000/redoc
-- http://localhost:8000/docs