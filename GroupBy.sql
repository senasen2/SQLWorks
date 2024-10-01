select country ,count(country) 
from employees
group by country 

-- Hangi ulkeden kac adet musterim var.
select country,count(*) Adet
from customers
group by country 
order by Adet desc --2 desc--count(*) desc

select * from orders
select * from orders where ship_country LIKE '%Argentina%'
--hangi kategoriden kaç adet ürün var? products
select category_id, COUNT(*) from products GROUP BY category_id
--hangi tedarikçiden kaç adet urun alıyorum? prducts
select supplier_id, COUNT(*) from products group by supplier_id
--1997 yılında hangi ulkeye kaç adet sipariş gönderdim? orders
select ship_country, COUNT(*) from orders 
where date_part('year',order_date)=1997
GROUP BY ship_country
order by 2 desc
--1997 yılında en az sipariş veren ulkeler hangileridir? orders
select ship_country, COUNT(*) from orders
where date_part('year',order_date)=1997
GROUP BY ship_country
order by 2 ASC
--1998 yılında ne fazla sipariş alan çalışanlarımdan ilk 3ü kimdir? prim verilecek. orders
select employee_id, COUNT(*) from orders
where date_part('year',order_date)=1997
GROUP BY employee_id
ORDER BY 2 DESC
limit 3

-- kargo firmalarinin taşıdıgı siparis sayisi nedir ?
select  ship_via ,count(*) Adet  
from orders
group by ship_via
order by Adet desc