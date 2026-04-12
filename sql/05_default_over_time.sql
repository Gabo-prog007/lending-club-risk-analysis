-- Default Rate Over Time (Monthly)
SELECT
    TO_CHAR(issue_d::DATE, 'YYYY-MM') AS year_month,
    COUNT(*) AS total_loans,
    ROUND((SUM(CASE WHEN loan_status = 'Charged Off' THEN 1 ELSE 0 END) * 100.0 / COUNT(*))::numeric, 2) AS default_rate_pct
FROM loans
WHERE issue_d IS NOT NULL
GROUP BY year_month
ORDER BY year_month;