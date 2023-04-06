

  create or replace view `dae-dbt-learn`.`dbt_qplearn`.`product`
  OPTIONS(
      expiration_timestamp=TIMESTAMP_ADD(CURRENT_TIMESTAMP(), INTERVAL 168 hour),
    
      description=""""""
    )
  as select stock_item_id as product_id,
      stock_item_name as product_name,
      coalesce(brand, "undefined") as brand_name,
      supplier.supplier_id,
      supplier.supplier_name
from `dae-dbt-learn.dbt_learn_040623.warehouse_stock_items_` as product
join  `dae-dbt-learn`.`dbt_qplearn`.`supplier`
on product.stock_item_id = supplier.supplier_id;

