/*
created by : fajrin darozatin 
created date : 24 september 2024 
deskripsi : memfilter hasil agar hanya menampilkan kota yang nama kota di mulai dengan huruf B dan rata2 jumlah faktur 
yang lebih besar dari $5 
*/

SELECT
	billingcity, 
	round(avg(total),2) 
FROM
	invoice
WHERE
	billingcity LIKE 'B%'
GROUP BY 
	billingcity
HAVING
	avg(total)>5
ORDER BY 
	billingcity
	
/* 
NOTE : 
1. having clause : digunakan untuk menyaring hasil dari GROUP By. 
JADI hanya menampilkan kota yang memiliki rata-rata lebih dari $5.
2. having sama seperti where tapi di terapkannya setelah group by 
3. penempatan having di letakkan setelah group by dan sebelum order by 
4. having avg(total)>5 = memfilter group yg rata2 jumlah totalnya lebih besar dari $5
*/