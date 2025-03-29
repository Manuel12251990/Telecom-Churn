# Telecom-churn-sql

-- Retrieve full customer data with tenure group, churn flag, and rank by charges
-- Used SQL functions techinques like CTEs, window functions, and case statements.

WITH Customer AS 
(
    Select *,
      case
          when tenure <= 12 then 'New'
          when tenure between 13 and 48 then 'Mid-Term'
          else 'Loyal'
      end as TenureGroup
    from telecom_churn
), 

RankedCharges AS 
(
  select
     customerID,
     MonthlyCharges,
     TotalCharges,
     Rank() over (order by totalcharges desc) as ChargeRank
  from customer
)

select 
  c.*, r.*
  from customer c 
    inner join rankedcharges r on c.customerID = r.customerID
    order by r.chargerank
