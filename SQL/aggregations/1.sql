SELECT SUM(poster_qty) total_poster_sales,
    SUM(standard_qty) total_standard_sales,
    SUM(total_amt_usd) total_dollar_sales,
    SUM(standard_amt_usd)/SUM(standard_qty) standard_unit_price
FROM orders