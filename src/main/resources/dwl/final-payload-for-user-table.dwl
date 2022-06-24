%dw 2.0
import * from dw::Crypto
output application/json
---
{
	first_name : lower(payload.first_name) as String,
	last_name : lower(payload.last_name) default "" as String,
	email : lower(payload.email) as String,
	password : dw::Crypto::SHA1(payload.password as Binary),
	date_of_birth : payload.date_of_birth as String {format: "y-MM-dd"},
	date_of_joining : payload.date_of_joining as String {format: "y-MM-dd"},
	account_status : payload.account_status default "inactive" as String,
	email_verification_status : payload.email_verification_status default "unverified" as String	
}