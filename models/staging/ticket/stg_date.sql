WITH date AS (

    SELECT
        date_id,
        cal_date,
        day,
        week,
        month,
        qtr,
        year,
        holiday
    FROM {{source('TicketDB','date')}}
)

SELECT * FROM date