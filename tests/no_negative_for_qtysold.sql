SELECT
    user_id,
    total_sold
FROM {{ ref('dim_users' )}}
WHERE NOT(total_sold >= 0)