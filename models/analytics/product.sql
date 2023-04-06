select stock_item_id as product_id,
      stock_item_name as product_name,
      coalesce(brand, "undefined") as brand_name,
      supplier.supplier_id,
      supplier.supplier_name
from `dae-dbt-learn.dbt_learn_040623.warehouse_stock_items_` as product
join  {{ref('supplier')}}
on product.stock_item_id = supplier.supplier_id