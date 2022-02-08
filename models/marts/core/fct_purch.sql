WITH users AS (
    SELECT * FROM {{ ref('stg_users') }}
),

sales AS (
    SELECT * FROM {{ ref('stg_sales') }}
),

user_purc AS (

    SELECT
        sales_id,
        user_id,
        full_name,
        price_paid,
        sale_time
    FROM users
    INNER JOIN sales ON users.user_id = sales.buyer_id
    ORDER BY 1
)

SELECT * FROM user_purc