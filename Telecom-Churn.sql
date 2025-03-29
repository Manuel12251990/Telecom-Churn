
-- Advanced SQL Query on Telecom Churn Dataset
-- Author: Manuel Lizardo
-- Description: Segment customers, rank them by TotalCharges, and combine data into a comprehensive churn report.

-- Step 1: Segment customers by tenure
WITH Customer AS (
    SELECT
        *,
        CASE 
            WHEN tenure <= 12 THEN 'New'
            WHEN tenure BETWEEN 13 AND 48 THEN 'Mid-Term'
            ELSE 'Loyal'
        END AS TenureGroup
    FROM telecom_churn
),

-- Step 2: Rank customers by TotalCharges
RankedCharges AS (
    SELECT
        customerID,
        TotalCharges,
        RANK() OVER (ORDER BY TotalCharges DESC) AS ChargeRank
    FROM Customer
)

-- Step 3: Join and output final enriched dataset
SELECT 
    c.*, r.*
FROM Customer c
JOIN RankedCharges r ON c.customerID = r.customerID
ORDER BY r.ChargeRank;
