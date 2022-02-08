{% docs category_info %}
CATEGORY table

| Column name       |   Description                                                                                                                         |
|-------------------|---------------------------------------------------------------------------------------------------------------------------------------|
| CAT_ID            |   Primary Key, a unique ID value for each row. Each row represents a specific type of event for which tickets are bought and sold.    |
| CAT_GROUP         |   Desciptive name for a group of events, such as Shows and Sports.                                                                    |
| CAT_NAME          |   Short descriptive name for a type of event within a group, such as Opera and Musicals.                                              |
| CAT_DESC          |   Longer descriptive name for the type of event, such as Musical theatre.                                                             |

{% enddocs %}

{% docs date_info %}
DATE table

| Column name       |   Description                                                                                                                         |
|-------------------|---------------------------------------------------------------------------------------------------------------------------------------|
| DATE_ID           |   Primary Key, a unique ID value for each row. Each row represents a day in the calendar year.                                        |
| CAL_DATE          |   Calendar date, such as 2008-06-24.                                                                                                  |
| DAY               |   Day of week (short form), such as SA.                                                                                               |
| WEEK              |   Week number, such as 26.                                                                                                            |
| MONTH             |   Month name (short form), such as JUN.                                                                                               |
| QTR               |   Quarter number (1 through 4).                                                                                                       |
| YEAR              |   Four-digit year (2008).                                                                                                             |
| HOLIDAY           |   Flag that denotes whether the day is a public holiday (U.S.).                                                                       |

{% enddocs %}

{% docs event_info %}
DATE table

| Column name       |   Description                                                                                                                                 |
|-------------------|-----------------------------------------------------------------------------------------------------------------------------------------------|
| EVENT_ID          |   Primary key, a unique ID value for each row. Each row represents a separate event that takes place at a specific venue at a specific time.  |
| VENUE_ID          |   Foreign-key reference to the VENUE table.                                                                                                   |
| CAT_ID            |   Foreign-key reference to the CATEGORY table.                                                                                                |
| DATE_ID           |   Foreign-key reference to the DATE table.                                                                                                    |
| EVENT_NAME        |   Name of the event, such as Hamlet or La Traviata.                                                                                           |
| START_TIME        |   Full date and start time for the event, such as 2008-10-10 19:30:00.                                                                        |

{% enddocs %}

{% docs listing_info %}
LISTING table

| Column name       |   Description                                                                                                                         |
|-------------------|---------------------------------------------------------------------------------------------------------------------------------------|
| LIST_ID           |   Primary key, a unique ID value for each row. Each row represents a listing of a batch of tickets for a specific event.              |
| SELLER_ID         |   Foreign-key reference to the USERS table, identifying the user who is selling the tickets.                                          |
| EVENT_ID          |   Foreign-key reference to the EVENT table.                                                                                           |
| DATE_ID           |   Foreign-key reference to the DATE table.                                                                                            |
| NUM_TICKETS       |   The number of tickets available for sale, such as 2 or 20.                                                                          |
| PRICE_PER_TICKET  |   The fixed price of an individual ticket, such as 27.00 or 206.00.                                                                   |
| TOTAL_PRICE       |   The total price for this listing (NUM_TICKETS*PRICE_PER_TICKET).                                                                    |
| LIST_TIME         |   The full date and time when the listing was posted, such as 2008-03-18 07:19:35.                                                    |

{% enddocs %}

{% docs sales_info %}
SALES table

| Column name       |   Description                                                                                                                                                          |
|-------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| SALES_ID          |   Primary key, a unique ID value for each row. Each row represents a sale of one or more tickets for a specific event, as offered in a specific listing.               |
| LIST_ID           |   Foreign-key reference to the LISTING table.                                                                                                                          |
| SELLER_ID         |   Foreign-key reference to the USERS table (the user who sold the tickets).                                                                                            |
| BUYER_ID          |   Foreign-key reference to the USERS table (the user who bought the tickets).                                                                                          |
| EVENT_ID          |   Foreign-key reference to the EVENT table                                                                                                                             |
| DATE_ID           |   Foreign-key reference to the DATE table.                                                                                                                             |
| QTYSOLD           |   The number of tickets that were sold, from 1 to 8. (A maximum of 8 tickets can be sold in a single transaction.)                                                     |
| PRICE_PAID        |   The total price paid for the tickets, such as 75.00 or 488.00. The individual price of a ticket is PRICEPAID/QTYSOLD.                                                |
| COMMISSION        |   The 15% commission that the business collects from the sale, such as 11.25 or 73.20. The seller receives 85% of the PRICEPAID value                                  |
| SALE_TIME         |   The full date and time when the sale was completed, such as 2008-05-24 06:21:47.                                                                                     |

{% enddocs %}

{% docs users_info %}
USERS table

| Column name       |   Description                                                                                                                                                                 |
|-------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| USERS_ID          |   Primary key, a unique ID value for each row. Each row represents a registered user (a buyer or seller or both) who has listed or bought tickets for at least one event.     |
| USER_NAME         |   An 8-character alphanumeric username, such as PGL08LJI.                                                                                                                     |
| FULL_NAME         |   The user first and last name.                                                                                                                                               |
| CITY              |   The user's home city, such as Naperville.                                                                                                                                   |
| STATE             |   The user's home state, such as GA.                                                                                                                                          |
| EMAIL             |   The user's email address; this column contains random Latin values, such as turpis@accumsanlaoreet.org.                                                                     |
| PHONE             |   The user's 14-character phone number, such as (818) 765-4255.                                                                                                               |
| LIKE_SPORTS,...   |   A series of 10 different columns that identify the user's likes and dislikes with true and false values.                                                                    |


{% enddocs %}

{% docs venue_info %}
VENUE table

| Column name       |   Description                                                                                                                                                                 |
|-------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| VENUE_ID          |   Primary key, a unique ID value for each row. Each row represents a specific venue where events take place.                                                                  |
| VENUE_NAME        |   Exact name of the venue, such as Cleveland Browns Stadium.                                                                                                                  |
| VENUE_CITY        |   City name, such as Cleveland.                                                                                                                                               |
| VENUE_STATE       |   Two-letter state or province abbreviation (United States and Canada), such as OH.                                                                                           |
| VENUE_SEATS       |   Maximum number of seats available at the venue, if known, such as 73200. For demonstration purposes, this column contains some null values and zeroes.                      |

{% enddocs %}
