\set VERBOSITY verbose
BEGIN;
--Önce: Sıcak içecek fiyatları
SELECT name, price FROM product WHERE category = 'Sıcak İçecek' ORDER BY product_id;

--Komut 1: UPDATE'i buraya yaz
UPDATE product
SET price = price + 5
WHERE category = 'Sıcak İçecek';

--Sonra: Sıcak içecek fiyatları (yıkarıdaki SELECT'in aynısı)
SELECT name, price FROM product WHERE category = 'Sıcak İçecek' ORDER BY product_id;

--Komut 2:INSERT'i buraya yaz (hata verecek)
INSERT INTO order_item (order_id,product_id, quantity)
VALUES (1, 999, 1);
ROLLBACK;
-- ROLLBACK sonrası: Sıcak içecek fiyatları (yine aynı SELECT)
SELECT name, price FROM product WHERE category = 'Sıcak içecek' ORDER BY product_id;