# 📌 End-to-End Retail Analytics: Black Friday Dataset

<p align="center">
  <img src="Black Friday Analysis.jpg" width="100%" />
</p>

A complete **SQL + Python + Business Intelligence** workflow analyzing **550,000+ Black Friday retail transactions** to extract customer behavior patterns, product performance insights, and revenue optimization opportunities.  

Designed for **business stakeholders**, **business analysts**, and **executive decision-makers**.

---

---

# 🟩 Executive KPI Cards

<div align="center">

<table>
<tr>
<td align="center" width="260" style="background:#F9F5FF; border-radius:12px; padding:18px; border:1px solid #E6E0F8;">
  
### 🛍️ **Total Transactions**  
#### **550,068**  
<sub>Large-scale retail dataset with strong analytical reliability</sub>

</td>

<td align="center" width="260" style="background:#F0FBF4; border-radius:12px; padding:18px; border:1px solid #DAF2E3;">
  
### 👥 **Unique Customers**  
#### **~5.9K**  
<sub>Indicates strong repeat purchase behaviour</sub>

</td>

<td align="center" width="260" style="background:#FFF7E6; border-radius:12px; padding:18px; border:1px solid #FFE8C2;">
  
### 💸 **Average Spend Per Purchase**  
#### **₹9,000+**  
<sub>Indicates mid to high ticket pricing</sub>

</td>
</tr>

<tr>
<td align="center" width="260" style="background:#E8F7FF; border-radius:12px; padding:18px; border:1px solid:#D4ECFF;">
  
### 🏙️ **Top Spending City**  
#### **City C**  
<sub>Emerging market with highest AOV</sub>

</td>

<td align="center" width="260" style="background:#FFF0F0; border-radius:12px; padding:18px; border:1px solid:#FFD6D6;">
  
### 🛒 **Top Product Categories**  
#### **1, 5, 8**  
<sub>Categories that drive most transactions</sub>

</td>

<td align="center" width="260" style="background:#F3F3FF; border-radius:12px; padding:18px; border:1px solid:#E1E1FF;">
  
### 🔍 **High-Value Outlier Purchases**  
#### **~19K**  
<sub>Potential premium customer segment</sub>

</td>
</tr>
</table>

</div>

---

# 📘 Project Overview

Black Friday presents a massive opportunity for retailers to analyze purchasing behavior and optimize product, marketing, inventory, and pricing strategies.  

This end-to-end project:

- Explores **customer demographics**, **purchase behavior**, and **city-tier economics**
- Identifies **high-value segments**
- Analyzes **product category performance**
- Detects **outlier purchase patterns**
- Provides **executive-ready insights** for revenue growth and targeting

The result is a **decision-support framework** for data-driven retail strategy.

---

# 📂 Dataset Details

This dataset originates from a large Indian retail chain and contains **550K+ historical Black Friday transactions**.

### 📁 File
- `train.csv`

### 📌 Rows: **550,068**  
### 📌 Columns: **12**

---

# 🔑 Key Fields in the Dataset

| Column | Description |
|--------|-------------|
| User_ID | Unique customer identifier |
| Product_ID | Unique product identifier |
| Gender | M / F |
| Age | Age group of customer |
| Occupation | Categorical occupation code |
| City_Category | A, B, or C |
| Stay_In_Current_City_Years | Duration of stay |
| Marital_Status | 0 = single, 1 = married |
| Product_Category_1/2/3 | Product hierarchy groups |
| Purchase | Final transaction amount |

---

# 🧮 SQL Analysis (with Business Insights on each query performed)

### ✅ 1. **Data Profiling**
*Insight:* Data is rich, complete, and robust for demographic + transactional analysis.

### ✅ 2. **Missing Value Analysis**
*Insight:* Product category 2 & 3 have missing values → optional categories.

### ✅ 3. **Summary Statistics**
*Insight:* Purchase amounts show strong multi-modal patterns → price tiering.

### ✅ 4. **Gender-Level Analysis**
*Insight:* Males purchase slightly more on average → male-targeted campaigns may yield ROI.

### ✅ 5. **Age-Level Analysis**
*Insight:* Adults (26–55) dominate total spends → core profitability segment.

### ✅ 6. **City Category Analysis**
*Insight:* City C has highest spend → surprising growth market.

### ✅ 7. **Duplicate Check**
*Insight:* Multiple product purchases by same users indicate high repeat buying.

### ✅ 8. **Outlier Detection**
*Insight:* ~19K high-value transactions → premium shoppers exist.

### ✅ 9. **Product Performance**
*Insight:* Categories 1, 5, 8 generate majority of revenue → inventory prioritization required.

### 📄 Find the Full SQL Script in the file here: https://github.com/VidhiMistry1/BlackFridaySale_RetailAnalysis


---

# 📊 Retail Insights Dashboard  
### Python Visualization Panels 

---

# 📌 Customer Demographics & Purchase Behavior

<table>
<tr>
<td width="50%">

### 🧍‍♂️🧍‍♀️ Purchase Behavior by Gender  
<img src="Purchase by Gender.png" width="100%">

 
Male shoppers spend slightly more, but both genders show similar variability → balanced marketing potential.

</td>

<td width="50%">

### 🎯 Average Purchase by Age Group  
<img src="Average Purchase by Age Group.png" width="100%">


Age groups **26–55** dominate overall spending — your strongest **revenue-generating customer segment**.

</td>
</tr>
</table>

---

# 📌 Product Demand & Category Analysis

<table>
<tr>
<td width="50%">

### 🛒 Product Category 1 Distribution  
<img src="Product Category 1 Distribution.png" width="100%">


Product categories **1, 5, and 8** account for the highest transaction frequencies — prioritize stock, bundles, and promotions here.

</td>

<td width="50%">

### 🛍 Purchase Amount Distribution  
<img src="Purchase Amount Distribution.png" width="100%">


Multiple spending peaks reveal **price-tiering opportunities** (₹5K / ₹8K / ₹12K / ₹15K).

</td>
</tr>
</table>

---

# 📌 Geographic & Market Insights

<table>
<tr>
<td width="50%">

### 🏙 Average Purchase by City Category  
<img src="Average Purchase by City Category.png" width="100%">


City C shows the highest average spend — an unexpected standout market with strong growth potential.

</td>

<td width="50%">

### 🎉 Key Takeaways from Visuals

- **City C** has the strongest customer purchasing power.  
- **Ages 26–55** remain the core commercial demographic.  
- Spending patterns show clear **psychological price tiers**.  
- Strong demand for product categories **1, 5, 8** → optimize stock levels.  
- Gender spending is nearly balanced → broad targeting strategy works.  
- Wide purchase variance suggests opportunities for **budget & premium bundles**.

</td>
</tr>
</table>

---

# 💡 Key Business Insights

- **Adults (26–55)** are the highest spenders  
- **City C** → most promising for targeted campaigns  
- **Categories 1, 5, 8** → strongest revenue generators  
- **Multiple spending peaks** → ideal for tiered pricing  
- **High-value outliers (~19K)** → premium loyalty program candidates  
- **Women purchase less frequently but with similar variance**  
- **Younger segment (0–17)** is underpenetrated → opportunity for bundling  

---

# 🚀 Recommendations

### 🎯 1. Expand marketing efforts in **City C**
Highest AOV → faster revenue wins.

### 📦 2. Increase inventory in **categories 1, 5, and 8**
Strong, stable demand curves.

### 👑 3. Launch a **Premium Loyalty Program**
Target the 19K high-value outlier shoppers.

### 🧩 4. Implement **price-tier bundles**
Align with natural spending peaks (5K, 8K, 10K, 15K).

### 📲 5. Personalized campaigns for **26–55 segment**
This group drives profitability.

### 🌱 6. Youth segment (0–17) opportunity
Introduce **starter packs**, gaming discounts, apparel combos.

---

# 👤 Author

**Vidhi Mistry**  
Business Analyst 
GitHub: https://github.com/VidhiMistry1





