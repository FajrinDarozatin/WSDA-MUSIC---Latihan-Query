/*
deskripsi : menggabungkan 3 tabel = artist, album, tracks table 
VIEW? adalah query yg di simpan di database yang dapat di panggil dan digunakan kembali, sama seperti tabel biasa.
view tidak menyimpan data secara fisik, sebaliknya ia menyimpan definisi query yang di jalankan setiap kali view dipanggil
manfaat : menghindari penulisan ulang query yang kompleks secara berulang-ulang

tabel invoiceline dan tabel track = join 
membuat tampilan yang kompleks
*/

CREATE VIEW V_Tracks_InvoiceLine AS 
SELECT
	il.invoiceid,
	il.unitprice,
	il.quantity,
	t.name,
	t.composer,
	t.milliseconds
FROM
	invoiceline il 
INNER JOIN
	track t
ON
	il.trackid = t.trackid
	
/*
NOTE : 
1. view yg sudah di buat bisa lihat di database structure paling bawah dan ada di browse data juga
2. bisa lihat browse data, modify view, delete view dengan klik kanan pada tabel view di database structure
3.modify view : pop up klik ok. nanti akan muncul drop view dan edit aja lalu jalankan lagi
4. menghapus view : DROP VIEW V_Tracks_InvoiceLine
*/