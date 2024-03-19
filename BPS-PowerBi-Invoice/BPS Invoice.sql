SELECT SUM(invoiceAmount) AS total_revenue
FROM invoice;

SELECT SUM(invoiceProfit) AS total_profit
FROM invoice;

SELECT SUM(invoiceDiscountAmount) AS total_discount
FROM invoice;

SELECT invoicePaidBy, SUM(invoiceAmount) AS total_sales
FROM invoice
GROUP BY invoicePaidBy;

SELECT 
    (SELECT SUM(invoiceAmount) FROM invoice) AS total_sales,
    (SELECT SUM(invoiceBalance) FROM invoice) AS total_inventory_cost,
    (SELECT SUM(invoiceAmount) FROM invoice) / (SELECT SUM(invoiceBalance) FROM invoice) AS inventory_turnover_ratio;
    
SELECT invoicePaidBy, SUM(invoiceAmount) AS total_purchase_amount
FROM invoice
GROUP BY invoicePaidBy
ORDER BY total_purchase_amount DESC
LIMIT 5;

SELECT 
    YEAR(invoiceDate) AS year,
    SUM(invoiceProfit) AS total_profit,
    SUM(invoiceDiscountAmount) AS total_discount,
    SUM(invoiceAmount) AS total_sales
FROM invoice
GROUP BY YEAR(invoiceDate)
ORDER BY YEAR(invoiceDate);

