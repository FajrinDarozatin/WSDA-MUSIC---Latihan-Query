/*
CREATED by : fajrin darozatin 
CREATED Date : 24 september 2024 
Deskripsi : mengurangi tanggal sekarang dengan birthdate untuk menghitung umur
*/

SELECT
	FirstName,
	LastName,
	birthdate,
	strftime('%Y-%m-%d',birthdate) as [birthdate no time code],
	strftime('%Y-%m-%d','now')-strftime('%Y-%m-%d',birthdate) as age
FROM
	employee
	
