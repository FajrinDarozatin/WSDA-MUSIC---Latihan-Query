/*
CREATED by : fajrin darozatin 
CREATED Date : 24 september 2024 
Deskripsi : menggunakan fungsi substr untuk menghapus bagian tambahan 
*/

SELECT
	FirstName,
	LastName,
	Address,
	FirstName||' '||LastName||' '||Address||','||City||' '||State||' '||PostalCode As [Mailing Address],
	length(postalcode),
	substr(postalcode,1,5) AS [5 digit postalcode]
FROM
	customer
WHERE
	country = 'USA'
	
/*
NOTE: 
1. menggunakan operator ||(double pipe) untuk menggabungkan firstname, last name dll 
2. gunakan ' ' untuk spasi atau ',' untuk penambahan koma 
3. substr disini mengambil kodepos dari posisi 1 dan menyimpan lima digit pertama (penanda posisi pertama atau dua adalah -)
*/
