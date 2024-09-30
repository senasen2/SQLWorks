--Data Filtreleme;
--Amerika'da ki müşterilerin listesi
SELECT*FROM customers WHERE country = 'USA'
--Amerika'da ki müşterilerin SEATTLE olanların listesi
SELECT*FROM customers WHERE country = 'USA' AND city = 'Seattle'
--where şartında null kayıtların aranması
SELECT * FROM customers WHERE region IS NULL
--Tarih ile ilgili alanların sorgulanması
SELECT * FROM orders

--SELECT * FROM orders WHERE YEAR(order_date) = 1996 SQL Server da var
select * FROM  orders WHERE date_part('year', order_date) =1996;
select * FROM  orders WHERE date_part('month', order_date) =11;
select * FROM  orders WHERE date_part('day', order_date) =21;

 --Sayısal alanlarda sorgulama
select * from orders where ship_via = 3;
select * from suppliers;

--Amerika dışındaki tedarikçilerin listesi
select * from suppliers where country != 'USA'