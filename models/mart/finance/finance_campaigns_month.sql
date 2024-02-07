SELECT
EXTRACT(MONTH from date_date) AS date_month,
ROUND(SUM(ads_margin),2) AS ads_margin,
ROUND(SUM(operational_margin),2) as operational_margin,
ROUND(AVG(average_basket),2) as average_basket,
FROM {{ (ref("finance_campaigns_day"))}}
GROUP BY date_month
ORDER BY date_month DESC
