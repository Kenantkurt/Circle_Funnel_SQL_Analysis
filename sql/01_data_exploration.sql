-- =========================================
-- 01 - DATA EXPLORATION
-- Circle Funnel SQL Analysis
-- =========================================

-- 1️⃣ Explore the structure of the cc_funnel table
--    (View all columns & first rows to understand the schema)
SELECT *
FROM `course15.cc_funnel`;


-- 2️⃣ Count total number of rows in the cc_funnel table
SELECT COUNT(*) AS total_rows
FROM `course15.cc_funnel`;


-- 3️⃣ Identify the primary key candidate
--    (We examined duplicates in the company column)
SELECT
  company,
  COUNT(*) AS occurrences
FROM `course15.cc_funnel`
GROUP BY company
HAVING COUNT(*) > 1
ORDER BY occurrences DESC;

-- ➤ Finding:
-- The column "company" can be used as the primary key,
-- but one duplicate ("Crazy Running") was detected.
-- This duplicate row was removed manually in Google Sheets.
