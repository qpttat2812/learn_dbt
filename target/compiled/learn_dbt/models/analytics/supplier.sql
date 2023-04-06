select supplier_id,
        UPPER(supplier_name) as supplier_name
from `dae-dbt-learn.dbt_learn_040623.purchase_suppliers_raw_data`