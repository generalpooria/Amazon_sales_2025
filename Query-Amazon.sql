select * from amazon_sales ;


-- The most purchased categories
select  category , sum(quantity) as sales_count
from amazon_sales
group by  category
order by sum(quantity) desc;


-- the most used product
select product,category, sum(quantity) as Product_count
from amazon_sales
where Status = 'Completed'
group by product
order by sum(quantity) desc;


-- The most used payment method
select payment_method , count(payment_method) as count_payment
from amazon_sales
group by payment_method
order by count(Payment_Method) desc;

-- costumers data
select distinct Customer_Name as name , Customer_Location as location , sum(quantity) as all_product_count, count(Product) as type_product_count
from amazon_sales
where status = 'Completed'
group by Customer_Name
order by customer_name desc;

-- payment status
select amazon_sales.Status , count(amazon_sales.Status) 
from amazon_sales 
group by amazon_sales.Status
order by count(amazon_sales.Status);