-- Overall Portfolio Health
SELECT
    COUNT(*) AS total_loans,
    SUM(loan_amnt) AS total_funded_amount,
    ROUND(AVG(int_rate)::numeric, 2) AS avg_interest_rate,
    ROUND(AVG(dti)::numeric, 2) AS avg_dti,
    ROUND((SUM(CASE WHEN loan_status = 'Charged Off' THEN 1 ELSE 0 END) * 100.0 / COUNT(*))::numeric, 2) AS default_rate_pct
FROM loans;