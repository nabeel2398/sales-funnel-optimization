-- Conversion rate by campaign
SELECT campaign, 
       COUNT(*) AS total_leads,
       SUM(CASE WHEN conversion = 'Yes' THEN 1 ELSE 0 END) AS converted_leads,
       ROUND(100.0 * SUM(CASE WHEN conversion = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS conversion_rate
FROM leads
GROUP BY campaign;
