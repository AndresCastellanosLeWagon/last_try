SELECT
date_date,
SUM(ads_cost) AS ads_cost,
SUM(impression) AS impressions,
SUM(click) AS clicks
FROM {{ ref("int_campaign") }}
GROUP BY date_date
