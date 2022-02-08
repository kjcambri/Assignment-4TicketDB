WITH listing AS (

    SELECT
        list_id,
        seller_id,
        event_id,
        date_id,
        num_tickets,
        price_per_tickets,
        total_price,
        list_time
    FROM `ads-507-assignment-4.Tickit.listing`
)

SELECT * FROM listing