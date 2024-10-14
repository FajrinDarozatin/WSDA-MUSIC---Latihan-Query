/*
CREATED by : fajrin darozatin 
CREATED Date : 24 september 2024 
Deskripsi : memisahkan atau memotong teks dalam kasus ini menghapus bagian tambahan dari kode pos yang tidak diperlukan 
# menentukan panjang kode pos : gunakan fungsi length atau mengetahui panjang karakter 
*/

SELECT
	FirstName,
	LastName,
	Address,
	FirstName||' '||LastName||' '||Address||','||City||' '||State||' '||PostalCode As [Mailing Address],length(postalcode)
FROM
	customer
WHERE
	country = 'USA'
	
/*
NOTE: 
1. menggunakan operator ||(double pipe) untuk menggabungkan firstname, last name dll 
2. gunakan ' ' untuk spasi atau ',' untuk penambahan koma 
*/
