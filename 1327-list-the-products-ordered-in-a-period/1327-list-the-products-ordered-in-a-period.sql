# Write your MySQL query statement below
select p.product_name,sum(o.unit) as unit
from Orders as o
join Products as p
on o.product_id = p.product_id
WHERE DATE_FORMAT(order_date, '%Y-%m') = '2020-02'
group by o.product_id
having sum(o.unit)>=100;