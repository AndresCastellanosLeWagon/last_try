SELECT
f.date_date,
(f.operational_margin - c.ads_cost) AS ads_margin,
f.average_basket,
f.operational_margin
FROM {{ ref("finance_days")}} f
LEFT JOIN {{ ref("int_campaigns_day")}} c
USING (date_date)