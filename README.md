# 📊 Telecom Churn SQL Analysis

This project showcases advanced SQL techniques using the [Telecom Churn dataset](#) to explore customer churn patterns in the telecom industry. The dataset was originally in CSV format and imported into SQL Server for this analysis.

## 📌 Objective

To query and analyze churn data by segmenting customers, ranking them by revenue contribution, and preparing the data for future modeling.

---

## 🛠️ Tools & Environment

- Microsoft SQL Server Management Studio (SSMS)
- Dataset format: CSV (converted to SQL table)

---

## ⚙️ SQL Techniques Demonstrated

- Common Table Expressions (CTEs)
- CASE statements for conditional segmentation
- RANK() window function for customer charge ranking
- Joining CTEs for enriched feature engineering
- Order-based insights to support churn mitigation strategies

---

## 🧠 Query Breakdown

- **Step 1:** Use a CTE to create tenure-based customer segments (`New`, `Mid-Term`, `Loyal`)
- **Step 2:** Rank customers by `TotalCharges` to identify high-revenue users
- **Step 3:** Join CTEs to get a comprehensive churn report with enriched fields

---

## 📄 Output Preview

| customerID | TenureGroup | MonthlyCharges | TotalCharges | ChargeRank | Churn |
|------------|-------------|----------------|---------------|------------|-------|
| 7590-VHVEG | New         | 29.85          | 29.85         | 1123       | No    |
| 5575-GNVDE | Mid-Term    | 56.95          | 1889.50       | 223        | No    |
| ...        | ...         | ...            | ...           | ...        | ...   |

---

## 📂 File

- [telecom-churn-sql/Telecom-Churn.sql](https://github.com/Manuel12251990/telecom-churn-sql/blob/main/Telecom-Churn.sql) Full SQL script

---

## 📎 Next Steps

- Build a churn prediction model using SQL or Python
- Feed this query into Tableau or Power BI for visual analysis
- Run A/B tests on the "New" customer segment to improve retention

---

## 📬 Contact

Feel free to fork this project or connect with me on [LinkedIn](https://www.linkedin.com/in/manuel-lizardo/) for collaboration or feedback!
