/*
CREATED by : fajrin darozatin 
CREATED Date : 24 september 2024 
Deskripsi : manajerial di WSDA music ingin mengirimkan kartu pos yang di personalisasi kepada pelanggan yang berbasis di AS 

# Untuk itu, diperlukan satu kolom yang berisi nama depan, nama belakang serta alamat lengkap pelanggan yang mencakup 
jalan, kota, negara bagian dan kode pos
*/

SELECT
	FirstName,
	LastName,
	Address,
	FirstName||' '||LastName||' '||Address||','||City||' '||State||' '||PostalCode As [Mailing Address]
FROM
	customer
WHERE
	country = 'USA'
	
/*
NOTE: 
1. menggunakan operator ||(double pipe) untuk menggabungkan firstname, last name dll 
2. gunakan ' ' untuk spasi atau ',' untuk penambahan koma 
*/
