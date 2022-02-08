WITH users AS (

    SELECT
        user_id,
        user_name,
        CONCAT(first_name,' ', last_name) AS full_name,
        city,
        state,
        email,
        phone,
        like_sports,
        like_theatre,
        like_concerts,
        like_jazz,
        like_classical,
        like_opera,
        like_rock,
        like_vegas,
        like_broadway,
        like_musicals
    FROM {{source('TicketDB','users')}}
)

SELECT * FROM users