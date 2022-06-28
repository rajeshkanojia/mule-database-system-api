%dw 2.0
output application/xml
---

"response" : {
		success : payload.success,
		total_rows : payload.total_rows,
		USERS : {
			USER : payload.results map $
		} 	
	}