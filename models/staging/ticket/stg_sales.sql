WITH sales AS (

    SELECT
        sales_id,
        list_id,
        seller_id,
        buyer_id,
        event_id,
        date_id,
        qtysold,
        price_paid,
        commission,
        sale_time
    FROM {{source('TicketDB','sales')}}
)

SELECT * FROM sales