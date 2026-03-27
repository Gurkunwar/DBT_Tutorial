WITH sales AS 
(
    SELECT
        sales_id,
        product_sk,
        refund_amount
    FROM
        {{ ref('bronze_sales') }}
),

products AS
(
    SELECT 
        product_sk,
        category
    FROM
        {{ ref('bronze_product') }}
),

customer AS 
(
    SELECT 
        customer_sk,
        gender
    FROM 
        {{ ref('bronze_customer') }}
)

SELECT 
    sales.sales_id,
    sales.refund_amount,
    products.category
    {# customer.gender #}
FROM 
    sales
JOIN
    products ON sales.product_sk = products.product_sk