-- =========================================
-- 07 - MONTHLY FUNNEL ANALYSIS
-- Circle Funnel SQL Analysis
-- =========================================

-- Monthly breakdown of funnel performance based on lead creation month

SELECT
  EXTRACT(MONTH FROM date_lead) AS month_lead,

  -- Volume
  COUNT(*) AS prospect,
  SUM(lead2customer) AS customer,

  -- Conversion Rates
  ROUND(AVG(lead2customer) * 100, 1) AS lead2customer_rate,
  ROUND(AVG(lead2opportunity) * 100, 1) AS lead2opportunity_rate,
  ROUND(AVG(opportunity2customer) * 100, 1) AS opportunity2customer_rate,

  -- Conversion Times (days)
  ROUND(AVG(lead2customer_time), 2) AS lead2customer_time,
  ROUND(AVG(lead2opportunity_time), 2) AS lead2opportunity_time,
  ROUND(AVG(opportunity2customer_time), 2) AS opportunity2customer_time

FROM `course15.cc_funnel_kpi_2`
GROUP BY month_lead
ORDER BY month_lead;
