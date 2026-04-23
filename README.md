# End-to-End Credit Risk & Portfolio Performance Analytics for a P2P Lending Platform 🇺🇸

## 📌 Executive Summary
This project simulates a comprehensive risk and performance analysis for **Lending Club**, a leading peer-to-peer lending platform. Acting as a Lead Business Intelligence Analyst, I analyzed a massive historical dataset of **~1.3 million completed loans (2007–2018)** to identify key drivers of loan default, segment the borrower base, and build a professional, interactive dashboard that empowers the risk management team to make data-driven decisions.

By leveraging **Power BI** for advanced risk visualization and **AI-Assisted workflows (Prompt Engineering)** to process and structure the massive dataset via Python and SQL, I was able to focus entirely on financial modeling. The analysis revealed that **38% of the loan portfolio is at medium-high risk of default**, with specific combinations of loan purpose and credit grade exhibiting default rates above **25%**. 

## 🛠️ Tech Stack & Strategic Skills
- **Business Intelligence & Visualization:** `Power BI` – Built a 5-page executive dashboard with **advanced DAX measures** (YoY comparisons, moving averages, dynamic risk ranking) and professional navigation (drill-through, custom tooltips).
- **Data Preparation & ETL (AI-Assisted):** `Python` & `PostgreSQL` – Leveraged Prompt Engineering to rapidly deploy scripts for complex data structuring, including missing value imputation (KNN) and outlier capping, accelerating the ETL process to focus on business logic.
- **Business Analytics:** Credit Risk Modeling, Portfolio Optimization, Debt-to-Income (DTI) Analysis, and Financial Forecasting.
- **Version Control:** `Git` & `GitHub` – Clean project structure and documentation.

## 🔍 Key Business Findings & Recommendations

### 1. Credit Grade is the Strongest Predictor of Default
Loans with a **G grade** (lowest credit quality) exhibit a default rate of **28.4%**, nearly **4x higher** than A-grade loans (7.2%). This validates the platform's risk-based pricing model but highlights a segment where stricter underwriting could drastically reduce losses.

### 2. Small Business and Renewable Energy Loans Are the Riskiest Purposes
Despite representing only 2.5% of total origination volume, **Small Business** loans have a default rate of **26.8%**, followed closely by **Renewable Energy** (23.1%).  
**Recommendation:** Implement additional verification steps for these categories or adjust interest rates to compensate for elevated exposure.

### 3. High DTI (>25%) Combined with Low Credit Grades Creates a Danger Zone
Borrowers with a **Debt-to-Income ratio above 25%** and credit grades **D–G** account for **45% of all charged-off loans**, while representing only **30% of total origination volume**.  
**Recommendation:** Tighten DTI limits specifically for subprime grades to protect the portfolio's profitability.

### 4. Default Rate Shows a Clear Seasonal Pattern
Defaults peak in **Q4** (October–December) and trough in **Q2** (April–June).  
**Recommendation:** This insight can be used to optimize the timing of marketing campaigns for high-quality borrowers and adjust loss provisioning reserves throughout the fiscal year.

## 📊 Dashboard Preview (Power BI)

The interactive report consists of **5 strategic pages**, designed for executive decision-making and risk management. 

### Page 1 – Executive Summary
![Executive Summary](images/01_executive_summary.png)
*High-level KPIs, default rate trend with 3-month moving average, and loan volume by purpose.*

### Page 2 – Portfolio Composition
![Portfolio Composition](images/02_portfolio_composition.png)
*Loan distribution by credit grade, purpose, and amount buckets. Yearly origination matrix.*

### Page 3 – Risk Analysis (Heatmap & Drivers)
![Risk Analysis](images/03_risk_analysis.png)
*Default rate heatmap (Grade vs Purpose), DTI bucket analysis, and waterfall chart of charged-off contributions.*

### Page 4 – Time Trends
![Time Trends](images/04_time_trends.png)
*Default rate evolution (Current vs Previous Year) and monthly origination volume by final status.*

### Page 5 – Loan-Level Details (Drill-Through)
![Loan Details](images/05_loan_details.png)
*Granular view of individual loans, accessible via right-click drill-through from any other page.*

> **Note:** The full interactive dashboard is available upon request. A live embedded version can be demonstrated during interviews.

### 📈 Strategic Value Delivered
As a Business Intelligence Analyst, I transform complex financial data into clear, actionable strategies to protect corporate capital.

What I deliver in a typical consulting engagement:
* **Risk & Profitability Analysis:** Identifying vulnerabilities within portfolios and optimizing asset allocation.
* **Financial Data Modeling:** Building automated models to track exposure and operational efficiency.
* **Executive-Grade Dashboards:** Interactive Power BI reports that tell a compelling financial story and enable self-service analytics for leadership.
* **Actionable Recommendations:** Providing clear, data-driven next steps focused on risk mitigation and cost optimization.

📞 **Let's Connect**
I am actively seeking remote opportunities in Business Intelligence & Data Analytics.

**LinkedIn:** [linkedin.com/in/gabriel-zapata7](https://www.linkedin.com/in/gabriel-zapata7)  
**Freelance:** Available for strategic consulting on Upwork & Workana.

## 📂 Repository Structure
```plaintext
lending-club-risk-analysis/
├── README.md                           # Project documentation (you are here)
├── .gitignore                          # Ignore raw data and temporary files
│
├── data/                               # Raw and cleaned datasets (ignored by Git)
│   ├── accepted_2007_to_2018Q4.csv     # Original dataset from Kaggle
│   └── lending_club_loans_cleaned.csv  # Output of AI-assisted cleaning script
│
├── notebooks/                          # Jupyter notebooks (AI-Assisted processing)
│   └── 01_Data_Cleaning_and_Preprocessing.ipynb
│
├── sql/                                # SQL queries used for extraction
│   ├── 01_portfolio_summary.sql
│   ├── 02_default_by_grade.sql
│   ├── 03_default_by_purpose.sql
│   ├── 04_risk_matrix.sql
│   └── 05_default_over_time.sql
│
├── reports/                            # Power BI report file
│   └── LendingClub_Risk_Analysis.pbix
│
└── images/                             # Dashboard screenshots for README
    ├── 01_executive_summary.png
    ├── 02_portfolio_composition.png
    ├── 03_risk_analysis.png
    ├── 04_time_trends.png
    └── 05_loan_details.png
