WITH category AS (

    SELECT
        cat_id,
        cat_group,
        cat_name,
        cat_desc
    FROM {{source('TicketDB','category')}}
)

SELECT * FROM category