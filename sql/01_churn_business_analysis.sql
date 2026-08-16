-- ============================================================
-- CUSTOMER CHURN INTELLIGENCE
-- Business Retention & Revenue Risk Analysis
-- ============================================================

-- 1. Overall Customer Risk Summary

SELECT
    RiskSegment,
    COUNT(*) AS CustomerCount,
    ROUND(AVG(ChurnProbability) * 100, 2) AS AvgChurnProbabilityPct,
    ROUND(SUM(AnnualRevenue), 2) AS AnnualRevenue,
    ROUND(SUM(ExpectedRevenueAtRisk), 2) AS ExpectedRevenueAtRisk
FROM customer_churn_intelligence
GROUP BY RiskSegment
ORDER BY AvgChurnProbabilityPct DESC;

-- ============================================================
-- 2. Retention Priority Analysis
-- ============================================================

SELECT
    RetentionPriority,
    COUNT(*) AS CustomerCount,
    ROUND(AVG(ChurnProbability) * 100, 2) AS AvgChurnProbabilityPct,
    ROUND(AVG(MonthlyCharges), 2) AS AvgMonthlyCharges,
    ROUND(SUM(AnnualRevenue), 2) AS AnnualRevenue,
    ROUND(SUM(ExpectedRevenueAtRisk), 2) AS ExpectedRevenueAtRisk
FROM customer_churn_intelligence
GROUP BY RetentionPriority
ORDER BY
    CASE RetentionPriority
        WHEN 'Urgent' THEN 1
        WHEN 'High' THEN 2
        WHEN 'Medium' THEN 3
        WHEN 'Low' THEN 4
    END;

-- ============================================================
-- 3. Top 20 Customers for Retention Intervention
-- ============================================================

SELECT
    customerID,
    ROUND(ChurnProbability * 100, 2) AS ChurnProbabilityPct,
    RiskSegment,
    ROUND(MonthlyCharges, 2) AS MonthlyCharges,
    ROUND(AnnualRevenue, 2) AS AnnualRevenue,
    ROUND(ExpectedRevenueAtRisk, 2) AS ExpectedRevenueAtRisk,
    ROUND(RetentionPriorityScore, 2) AS RetentionPriorityScore,
    RetentionPriority
FROM customer_churn_intelligence
WHERE RetentionPriority IN ('Urgent', 'High')
ORDER BY RetentionPriorityScore DESC
LIMIT 20;

