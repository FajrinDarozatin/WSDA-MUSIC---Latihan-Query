/*
deskripsi : tim manajemen WSDA musik tertarik untuk menemukan track mana yang tidak laku
*/

SELECT
	trackid,
	composer,
	name
FROM
	track
WHERE
	trackid 
NOT IN 
	(SELECT
		DISTINCT
		trackid
	FROM
		invoiceline
	ORDER BY 
		trackid)
		
/*
NOTE : 
1. NOT IN unntuk melihat track yang tidak terjual
*/