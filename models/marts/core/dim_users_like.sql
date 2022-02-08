WITH users AS (
    SELECT * FROM {{ ref('stg_users') }}
),

event AS (
    SELECT * FROM {{ ref('stg_event') }}
),

sales AS (
    SELECT * FROM {{ ref('stg_sales') }}
),

user_likes AS (

    SELECT
        users.full_name,
        event.event_name,
        users.like_sports,
        users.like_theatre,
        users.like_concerts,
        users.like_jazz,
        users.like_classical,
        users.like_opera,
        users.like_rock,
        users.like_vegas,
        users.like_broadway,
        users.like_musicals
        
    FROM users
    INNER JOIN sales ON sales.buyer_id = users.user_id
    INNER JOIN event ON sales.event_id = event.event_id
)

SELECT * FROM user_likes