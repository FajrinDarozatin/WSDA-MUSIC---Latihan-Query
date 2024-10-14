/*
deskripsi : manajemen musik WSDA tertarik pada tiga invoice tertentu untuk memilih invoice individual ini. 
mari pertimbangkan pernyataan SQL menggunakan operator IN untuk memilih 3 invoice
*/

SELECT
	invoicedate,
	billingaddress,
	billingcity
FROM
	invoice
WHERE
	invoicedate IN 
	(SELECT
		invoicedate
	FROM
		invoice
	WHERE
		invoiceid IN (251,252,254))
		
/*
NOTE : 
1. subquery ini menghasilkan tanggal untuk 3 invoice yang telah di tentukan
*/