use classwork;

SELECT * FROM orders;
/*
-- Neel:
SELECT customer_number
FROM orders
GROUP BY customer_number
ORDER BY COUNT(order_number) DESC
LIMIT 1;

-- Nihar:
select customer_number from orders
where order_number in (select max(order_number) from orders);

-- Shivan:
SELECT customer_number
FROM orders
WHERE order_number = (SELECT MAX(order_number) FROM orders)
GROUP BY customer_number;


select customer_number
from (
	select customer_number, count(order_number) as orders
	from orders
	group by customer_number
) t
order by orders desc
limit 1;
*/

with t as (
	select customer_number, count(order_number) as orders
	from orders
	group by customer_number
),
t2 as (
	select customer_number
    from t
    order by orders desc
)
select customer_number
from t2
limit 1;