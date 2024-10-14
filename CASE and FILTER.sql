/* 
created by : fajrin darozatin 
created date : 23 september 2024 
deskripsi : memfilter data untuk menganalisis kota mana yang menghasilkan penjualan terbanyak 'Top Performer'
*/

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity, 
	total,
	CASE 
		WHEN total < 2.00 THEN 'Baseline Purchase'
		WHEN total BETWEEN 2.00 AND 6.99 THEN 'Low Purchase'
		WHEN total BETWEEN 7.00 AND 15.00 THEN 'Target Purchase' 
		ELSE 'Top Performer'
	END AS 'PurchaseType'
FROM
	Invoice 
WHERE
	PurchaseType = 'Top Performer'
ORDER BY 
	BillingCity
	