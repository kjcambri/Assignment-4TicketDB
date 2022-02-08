WITH users AS (
    SELECT * FROM {{ ref('stg_users') }}
),

sales AS (
    SELECT * FROM {{ ref('stg_sales') }}
),

user_sales AS (

    SELECT
        sales.sales_id,
        users.user_id,
        users.full_name,
        sales.qtysold AS total_sold,
        sales.commission,
        sales.sale_time
    FROM users
    INNER JOIN sales ON users.user_id = sales.seller_id
    ORDER BY 4 DESC
)

SELECT * FROM user_sales