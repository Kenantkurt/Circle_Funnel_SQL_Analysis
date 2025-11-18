-- =========================================
-- 05 - GLOBAL FUNNEL OVERVIEW
-- Circle Funnel SQL Analysis
-- =========================================

-- Global KPI view of the full B2B funnel

SELECT
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

FROM `course15.cc_funnel_kpi_2`;
