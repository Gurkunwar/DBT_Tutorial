SELECT
    *
FROM 
    {{ ref('bronze_sales') }}
WHERE
    refund_amount < 0