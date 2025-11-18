-- =========================================
-- 04 - CONVERSION TIMES
-- Circle Funnel SQL Analysis
-- =========================================

-- Compute time spent between each funnel stage (in days)

SELECT
  *,

  -- 1️⃣ Lead → Customer (full funnel time)
  CASE
    WHEN date_customer IS NOT NULL THEN DATE_DIFF(date_customer, date_lead, DAY)
    ELSE NULL
  END AS lead2customer_time,

  -- 2️⃣ Lead → Opportunity
  CASE
    WHEN date_opportunity IS NOT NULL THEN DATE_DIFF(date_opportunity, date_lead, DAY)
    ELSE NULL
  END AS lead2opportunity_time,

  -- 3️⃣ Opportunity → Customer
  CASE
    WHEN date_customer IS NOT NULL AND date_opportunity IS NOT NULL
      THEN DATE_DIFF(date_customer, date_opportunity, DAY)
    ELSE NULL
  END AS opportunity2customer_time

FROM `course15.cc_funnel`;
