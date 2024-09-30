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
