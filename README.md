# 📊 Circle_Funnel_SQL_Analysis

This project analyzes the B2B sales acquisition funnel of **Circle**, a French eco-responsible sportswear company.  
The goal is to evaluate funnel efficiency, conversion performance, and progression across different stages of the B2B sales pipeline using SQL queries executed in **Google BigQuery**.

---

## 🎯 Project Objectives

- Explore and understand the structure of the funnel dataset  
- Clean and validate the data (duplicate removal & NULL handling)  
- Enrich the dataset with deal stages and conversion indicators  
- Calculate key funnel KPIs (L2O, O2W, L2C)  
- Measure conversion times across funnel stages  
- Analyze performance globally, by priority, and by month  
- Deliver actionable insights for the sales team  

---

## 🗂 Dataset

This analysis uses a single dataset imported from Google Sheets into BigQuery:

- **cc_funnel** — raw prospect-level funnel data  

An enriched version was created:

- **cc_funnel_kpi_2**, including:
  - deal stage (Lead / Opportunity / Customer / Lost)  
  - conversion flags  
  - time-to-conversion metrics  

---

## 🧹 Data Cleaning

### ✔ Duplicate Removal  
A duplicated company (**Crazy Running**) was identified and removed.

### ✔ NULL Cleaning  
Over 1000 rows had missing or hidden company names. These rows were removed entirely to ensure data integrity.

### ✔ Primary Key Confirmation  
After cleaning, each company appeared exactly once.  
Therefore, **company** is used as the primary key of the dataset.

---

## 📈 Global Funnel Insights

Across **189** valid prospects:

- **23 customers**
- **Lead → Customer:** 29.9%  
- **Lead → Opportunity:** 50.9%  
- **Opportunity → Customer:** 52.3%  

### ⏱ Average Conversion Times
- **Lead → Customer:** 18.8 days  
- **Lead → Opportunity:** 12.3 days  
- **Opportunity → Customer:** 8.1 days  

**Insight:**  
Once a prospect becomes an opportunity, conversion to customer happens relatively quickly.  
The main challenge occurs in the **Lead → Opportunity** transition.

---

## 🔍 Priority-Level Performance

### High Priority  
- Prospects: 92  
- Customers: 15  
- Strong volume; moderate efficiency  
- Longer conversion times compared to other segments

### Medium Priority  
- Prospects: 50  
- Customers: 5  
- **Most efficient** progression and customer conversion  
- Indicates strong lead qualification

### Low Priority  
- Prospects: 47  
- Customers: 3  
- Weakest conversion outcome  
- Shorter conversion times but minimal conversion success

**Key Takeaway:** Medium-priority leads have the **highest ROI** and convert most efficiently.

---

## 📅 Monthly Analysis

Monthly breakdown highlights:

- Changes in lead inflow  
- Variation in customer wins  
- Shifts in conversion speed  
- Overall funnel health over time  

These trends help the sales team understand seasonality and operational pacing throughout the pipeline.

---

## 🧭 Final Summary

Circle’s B2B acquisition funnel demonstrates:

- Strong performance at the **Opportunity → Customer** stage  
- Noticeable drop-off at **Lead → Opportunity**  
- Efficient conversion times after opportunity qualification  
- Medium-priority leads delivering the best overall performance  
- Low-priority leads underperforming despite fast movement  

### 🚀 Recommendations

- Improve early-stage lead qualification  
- Strengthen nurturing to increase opportunity creation  
- Prioritize engagement with Medium-priority prospects  
- Reassess effort allocation toward Low-priority leads  

Optimizing early funnel stages would meaningfully increase total customer conversions without requiring more leads.

---

## 🏷 Tags
`SQL` · `BigQuery` · `Data Analysis` · `Sales Funnel` · `Funnel KPIs` · `Data Cleaning` · `B2B Analytics` · `Conversion Analysis`


