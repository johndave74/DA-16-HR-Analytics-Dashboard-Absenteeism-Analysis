# HR Analytics Dashboard: Absenteeism Analysis

## 📊 Project Overview

This dashboard provides a comprehensive analysis of employee absenteeism within an organization. The goal is to identify patterns, underlying reasons, and impactful categories contributing to time lost due to absenteeism. It explores the relationship between absenteeism and variables such as seasons, employee demographics, BMI, education, and reasons related to health or lifestyle.

The dashboard was built using **Power BI** and aims to help HR teams make data-driven decisions to reduce unproductive hours and improve workforce efficiency.

The entire workflow involved:
* Data Preparation & Cleaning: Performed using SQL Server
* Data Visualization & Reporting: Built using Power BI
---

## 🧠 Key Metrics

* **Total Absenteeism Time:** `5,124 hours`
* **Average Absenteeism Time:** `6.92 hours`
* **Total Employees:** `740`

---

## 🧑‍💼 Employee Demographics and Categories

![page 1](https://github.com/user-attachments/assets/7b087daa-a210-40fe-9c40-3360995b6eab)

### 👶 Children Category

* **Employees with No Children:** 298 (40%)
* **Employees with 1-2 Children:** 385 (52%)
* **Employees with ≥3 Children:** 57 (8%)

**Insight:** Employees with 1–2 children represent the majority. A deeper drill-down could explore if there's a correlation between number of children and absenteeism time.

### 🎓 Education Level

* **Majority (82.6%)** of employees have Education Level 1.
* Very few have higher education levels (Levels 3 and 4).

**Insight:** The concentration of absenteeism might reflect the behavior of less formally educated employees, though correlation needs further study.

### ⚖️ BMI Category

* **Healthy:** 390 employees
* **Obese:** 204 employees
* **Overweight:** 146 employees

**Insight:** There is a significant number of overweight and obese employees (\~47%), which may influence health-related absenteeism. This is visually explored in the BMI vs absenteeism scatter chart.

---

## 📅 Trends and Time Analysis

![page 2](https://github.com/user-attachments/assets/e7a2ea91-01de-426a-97a8-df73ffc0f673)

### ✅ Monthly Trends

* **Peak Absenteeism:** Month 10 (October) recorded the highest average absenteeism time (`10.96 hours`), followed by Month 5 (`9.09 hours`) and Month 9 (`8.45 hours`).
* **Lowest Absenteeism:** Month 1 had `0.00 hours` average, suggesting either no recorded absenteeism or missing data.
* **Seasonal Filter:** The dashboard allows filtering by season (Fall, Spring, Summer, Winter), though “Unknown” season appears to be a category worth further data cleaning or investigation.

### 📆 Weekly Trends

* **Highest Absenteeism:** Day 2 (Tuesday) with an average of `9.25 hours`, followed by Monday (`7.98 hours`) and Wednesday (`7.15 hours`).
* **Lowest Absenteeism:** Friday (`4.42 hours`) and Saturday (`5.13 hours`), suggesting lower absenteeism as the workweek ends.


## 🩺 Reasons for Absence

### Top 4 Reasons with Highest Avg Absenteeism Time:

| Reason                                | Avg Time (hrs) |
| ------------------------------------- | -------------- |
| Circulatory System Diseases           | 42.00          |
| Neoplasms (possibly cancer or tumors) | 24.00          |
| Skin & Subcutaneous Tissue Diseases   | 23.38          |
| Nervous System Disorders              | 21.38          |

**Insight:** These categories of health issues result in the longest absences and likely represent chronic or serious medical conditions. Targeted health interventions or insurance support could reduce absenteeism here.

---

## 🚗 BMI vs Transportation Expense (Scatter Plot)

* There appears to be no strong linear trend, but a cluster of data points with high absenteeism and high transportation costs may suggest combined impact of mobility/access and health.

**Insight:** Employees with higher BMI and high transport expenses may be at higher risk of long-term absenteeism, pointing to areas for HR wellness programs or subsidized transportation.

---

## 💡 Key Recommendations

1. **Health-Focused Interventions:**

   * Focus on chronic disease prevention (e.g., circulatory and nervous system diseases).
   * Launch wellness programs targeting overweight/obese employees.

2. **Flexible Work Policies:**

   * Explore hybrid/remote work options especially in months with higher absenteeism.
   * Consider mid-week flexibility since Tuesdays and Mondays show highest absenteeism.

3. **Data Quality Improvements:**

   * Investigate entries with “Unknown” seasons and “0.00” absenteeism for possible data issues.
   * Standardize education levels and missing values.

4. **Policy-Based Actions:**

   * Implement family-friendly policies for employees with children.
   * Create education-based upskilling programs to increase engagement and reduce absenteeism.

---

## 👨‍💼 About the Author

**John David**

HR Analytics Enthusiast | Power BI Developer

Connect with me on LinkedIn: [John David](https://www.linkedin.com/in/john-david-b7b5781b3/)

---

## 📂 Files

* `page 1.png`: Dashboard Overview (Metrics & Demographics)
* `page 2.png`: Trends, Time Series & Health Analysis
* SQL Server Queries
