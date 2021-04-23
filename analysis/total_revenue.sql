with payments AS (
SELECT * FROM {{ ref('stg_payments') }}
),

aggregated AS (
SELECT
SUM(amount) AS total_revenue
FROM payments
where status = 'success'
)

SELECT * FROM aggregated
