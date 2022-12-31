select * from production.products
select product_id from production.products
select list_price from production.products
select * from production.products where brand_id = 9
select * from production.products where brand_id = 9 Order by product_id, product_name;
select * from production.products where brand_id = 9 Order by 1,3 offset 0 row Fetch next 5 rows only

--SQL Join statement is used to combine data or rows from two or more tables based on a common field between them.
--Different types of Joins: 

--INNER JOIN
--LEFT JOIN
--RIGHT JOIN
--FULL JOIN


                                   --inner join
--The INNER JOIN keyword selects all rows from both the tables as long as the condition is satisfied.

select production.categories.category_id,production.categories.category_name,production.products.product_id,production.products.list_price
from production.categories
inner join production.products
on production.categories.category_id=production.products.category_id

									--LEFT Join
--This join returns all the rows of the table on the left side of the join and matches rows for the table on the right side of the join.

select production.categories.category_id,production.categories.category_name,production.products.product_id,production.products.list_price
from production.categories
left join production.products
on production.categories.category_id=production.products.category_id

									--Right Join
--RIGHT JOIN is similar to LEFT JOIN. This join returns all the rows of the table on the right side of the join and matching rows for the table on the left side of the join.

select production.categories.category_id,production.categories.category_name,production.products.product_id,production.products.list_price
from production.categories
right join production.products
on production.categories.category_id=production.products.category_id

									--Full join
--FULL JOIN creates the result-set by combining results of both LEFT JOIN and RIGHT JOIN. The result-set will contain all the rows from both tables.

select production.categories.category_id,production.categories.category_name,production.products.product_id,production.products.list_price
from production.categories
full join production.products
on production.categories.category_id=production.products.category_id