-- Default Rate by Credit Grade
SELECT
    grade,
    COUNT(*) AS num_loans,
    ROUND(AVG(loan_amnt)::numeric, 2) AS avg_loan_amount,
    ROUND(AVG(int_rate)::numeric, 2) AS avg_interest_rate,
    ROUND((SUM(CASE WHEN loan_status = 'Charged Off' THEN 1 ELSE 0 END) * 100.0 / COUNT(*))::numeric, 2) AS default_rate_pct
FROM loans
GROUP BY grade
ORDER BY grade;