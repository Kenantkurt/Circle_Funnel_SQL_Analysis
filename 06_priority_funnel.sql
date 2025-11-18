-- =========================================
-- 06 - PRIORITY FUNNEL ANALYSIS
-- Circle Funnel SQL Analysis
-- =========================================

-- Funnel performance grouped by prospect priority

SELECT
  priority,
  COUNT(*) AS prospect,
  SUM(lead2customer) AS customer,

  -- Conversion Rates
  ROUND(AVG(lead2customer) * 100, 1) AS lead2customer_rate,
  ROUND(AVG(lead2opportunity) * 100, 1) AS lead2opportunity_rate,
  ROUND(AVG(opportunity2customer) * 100, 1) AS opportunity2customer_rate,

  -- Conversion Times
  ROUND(AVG(lead2customer_time), 2) AS lead2customer_time,
  ROUND(AVG(lead2opportunity_time), 2) AS lead2opportunity_time,
  ROUND(AVG(opportunity2customer_time), 2) AS opportunity2customer_time

FROM `course15.cc_funnel_kpi_2`
GROUP BY priority
ORDER BY priority;
