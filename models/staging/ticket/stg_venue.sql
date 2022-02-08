WITH venue AS (

    SELECT
        venue_id,
        venue_name,
        venue_city,
        venue_state,
        venue_seats
    FROM {{source('TicketDB','venue')}}
)

SELECT * FROM venue