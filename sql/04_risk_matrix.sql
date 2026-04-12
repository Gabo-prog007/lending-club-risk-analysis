-- Risk Matrix: Default Rate by Grade & Purpose
SELECT
    grade,
    purpose,
    COUNT(*) AS num_loans,
    ROUND((SUM(CASE WHEN loan_status = 'Charged Off' THEN 1 ELSE 0 END) * 100.0 / COUNT(*))::numeric, 2) AS default_rate_pct
FROM loans
GROUP BY grade, purpose
ORDER BY grade, default_rate_pct DESC;