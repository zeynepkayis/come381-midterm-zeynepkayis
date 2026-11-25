--Q1: Fiyatı 50 TL'den yüksek ürünleri pahalıdan ucuza sırala.
--Ne işe yarar: Kafenin 50 TL üzerindeki ürünlerini fiyatlarına göre azalan sırada gösterir.
SELECT product_id, name, category, price
FROM product
WHERE price > 50
ORDER BY price DESC;

--Q2: 'YBS' bölümündeki müşterilerin adlarını alfabetik sırala.
--Ne işe yarar: YBS bölümündeki müşterileri isim sırasına göre listeler.
SELECT customer_id, full_name, department
FROM customer
WHERE department = 'YBS'
ORDER BY full_name ASC;

--Q3: Her siparişin numarasını, tarihini ve müşterinin adını listele.
--Ne işe yarar: Sipariş kayıtlarını müşteri adlarıyla eşleştirerek hangi siparişin kime ait olduğunu gösterir.
SELECT o.order_id, o.order_date, c.full_name
FROM orders o
INNER JOIN customer c ON o.customer_id = c.customer_id 
ORDER BY o.order_id; 

--Q4: Her sipariş kaleminin ürün adını ve adedini listele.
--Ne işe yarar: Sipariş kalemlerindeki ürün adlarını ve miktarlarını bir arada gösterir.
SELECT oi.order_id, p.name AS product_name, oi.quantity
FROM order_item oi
INNER JOIN product p ON oi.product_id = p.product_id
ORDER BY oi.order_id, p.name;

--Q5: Her müşterinin kaç sipariş verdiğini müşteri adıyla listele.
--Ne işe yarar: Müşteri bazında verilen toplam sipariş sayısını getirir.
SELECT c.customer_id, c.full_name, COUNT(o.order_id) AS order_count
FROM customer c
INNER JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.full_name
ORDER BY order_count DESC, c.full_name ASC;
--Q6: Her ürün kategorisinin ortalama fiyatını bul.
--Ne işe yarar: Ürün kategorilerine göre ortalama fiyatları karşılaştırmayı sağlar.
SELECT category, ROUND(AVG(price), 2) AS avg_price 
FROM product
GROUP BY category
ORDER BY category; -- NULL Deneyi 1: IS NULL ve IS NOT NULL kontrolu
SELECT customer_id, full_name, department
FROM customer
WHERE department IS NULL
ORDER BY customer_id;
SELECT customer_id, full_name, department
FROM customer
WHERE department IS NOT NULL
ORDER BY full_name ASC;
-- NULL Deneyi 2: COUNT(*) vs COUNT(sutun) ve (= NULL) karsilastirmasi
SELECT
    COUNT(*) AS total_customers,
    COUNT(department) AS customers_with_department,
    COUNT(*) - COUNT(department) AS customers_with_null_department
FROM customer;
SELECT customer_id, full_name, department
FROM customer
WHERE department = NULL;
-- NULL Deneyi 1: IS NULL ve IS NOT NULL kontrolu
SELECT customer_id, full_name, department
FROM customer
WHERE department IS NULL
ORDER BY customer_id;
SELECT customer_id, full_name, department
FROM customer
WHERE department IS NOT NULL
ORDER BY full_name ASC;
-- NULL Deneyi 2: COUNT(*) vs COUNT(sutun) ve (= NULL) karsilastirmasi
SELECT
    COUNT(*) AS total_customers,
    COUNT(department) AS customers_with_department,
    COUNT(*) - COUNT(department) AS customers_with_null_department
FROM customer;
SELECT customer_id, full_name, department
FROM customer
WHERE department = NULL;
