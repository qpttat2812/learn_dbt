

  create or replace view `dae-dbt-learn`.`dbt_qplearn`.`supplier`
  OPTIONS(
      expiration_timestamp=TIMESTAMP_ADD(CURRENT_TIMESTAMP(), INTERVAL 168 hour),
    
      description=""""""
    )
  as select supplier_id,
        UPPER(supplier_name) as supplier_name
from `dae-dbt-learn.dbt_learn_040623.purchase_suppliers_raw_data`;

