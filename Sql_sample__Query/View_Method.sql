
Create view vWProductionDetails
As
select production.categories.category_id,production.categories.category_name,production.products.product_id,production.products.list_price
from production.categories
inner join production.products
on production.categories.category_id=production.products.category_id

select * from vWProductionDetails


sp_helptext vWProductionDetails