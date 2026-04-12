-- Default Rate by Loan Purpose (Top 5 Riskiest)
SELECT
    purpose,
    COUNT(*) AS num_loans,
    ROUND((SUM(CASE WHEN loan_status = 'Charged Off' THEN 1 ELSE 0 END) * 100.0 / COUNT(*))::numeric, 2) AS default_rate_pct
FROM loans
GROUP BY purpose
HAVING COUNT(*) > 1000  -- Filter purposes with significant volume
ORDER BY default_rate_pct DESC
LIMIT 5;