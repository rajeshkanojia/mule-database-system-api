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
	date_of_joining : now() as String {format: "y-MM-dd"},
	account_status : "inactive" as String,
	email_verification_status : "unverified" as String,
	hashID : dw::Crypto::SHA1(payload.email as Binary)
}