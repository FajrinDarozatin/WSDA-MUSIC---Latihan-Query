/* 
created by : fajrin darozatin 
created date : 23 september 2024 
deskripsi : 
1. dalam skenario ini, pernyataan CASE dalam SQL digunakan untuk mengkategorikan penjualan ke dalam beberapa tingkatan : 
- baseline purchase (pembelian dasar) 
- low purchase (pembelian rendah) 
- target purchase (pembelian target) 
- top performer (pembelian tertinggi)
pernyataan CASE SQL bertindak seperti logika IF-THEN-ELSE. memungkinkan analisis yang fleksibel dan dinamis
berdasarkan kondisi yang di tentukan 

2. menetapkan kategori CASE (sales kategori)
- Baseline Purchase = total penjualan kurang dari $2
- Low Purchase = total penjualan antara $2 dan $6.99
- Target Purchase = total penjualan  antara $7 dan $15 (target yg di inginkan tim penjualan) 
- Top Performer = total penjualan lebih dari $15 (apapun yg berada di luar kategori lainnya) 
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
	END AS 'Purchase Type'
FROM
	Invoice 
ORDER BY 
	BillingCity
	
/* 
NOTE : 
1. Pernyataan CASE ini secara dinamis mengklasifikasikan setiap catatan penjualan berdasarkan nilai total dan 
menciptakan kolom baru (purchase type) 
*/
	