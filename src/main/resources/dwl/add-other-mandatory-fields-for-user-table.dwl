%dw 2.0
output application/json
---
payload 
++ {"date_of_joining" : now() as String {format: "y-MM-dd"}}
++ {"account_status" : "inactive"}
++ {"email_verification_status" : "unverified"}