WITH event AS (

    SELECT
        event_id,
        venue_id,
        cat_id,
        date_id,
        event_name,
        start_time
    FROM {{source('TicketDB','event')}}
)

SELECT * FROM event