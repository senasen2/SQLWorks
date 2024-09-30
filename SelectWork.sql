--Tek satırlık yorum satırı
--select 3+14
/*
Çok satırlı yorum
*/
--Select veritabanında ki tabloları ya da viewleri sorgulamaya yarar.
--Genel kullanımı select * from <tablo_adi>
--ornekler
--productları listeleyelim

select * from products;
select * from categories
select * from shippers
select * from employees
select * from orders LIMIT 10;
SELECT * FROM order_details limit 5;
select * from products where product_id = 72

SELECT * FROM suppliers

/*
select ifadesinde * kullanılırsa tablodaki bütün feil alanları gelir.
bu genelde tercih edilmez cünkü fazladan network trafiğine neden olur.
bundan kaçmanın yolu ihtiyac duyulan fieldların tek tek aralarında , olmak kaydıyla belirlenmesidir.
*/

select employee_id,first_name,last_name from employees;
select * from employees;

-- --Data Filtreleme;
-- --Amerika'da ki müşterilerin listesi
-- SELECT*FROM customers WHERE country = 'USA'
-- --Amerika'da ki müşterilerin SEATTLE olanların listesi
-- SELECT*FROM customers WHERE country = 'USA' AND city = 'Seattle'
-- --where şartında null kayıtların aranması
-- SELECT * FROM customers WHERE region IS NULL
-- --Tarih ile ilgili alanların sorgulanması
-- SELECT * FROM orders

-- --SELECT * FROM orders WHERE YEAR(order_date) = 1996 SQL Server da var
-- select * FROM  orders WHERE date_part('year', order_date) =1996;
-- select * FROM  orders WHERE date_part('month', order_date) =11;
-- select * FROM  orders WHERE date_part('day', order_date) =21;

--  --Sayısal alanlarda sorgulama
-- select * from orders where ship_via = 3;
-- select * from suppliers;

-- --Amerika dışındaki tedarikçilerin listesi
-- select * from suppliers where country != 'USA'



