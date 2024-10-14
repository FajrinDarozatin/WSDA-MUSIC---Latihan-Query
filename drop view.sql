DROP VIEW IF EXISTS "main"."V_Tracks_InvoiceLine";
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