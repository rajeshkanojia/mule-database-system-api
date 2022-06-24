%dw 2.0
import * from dw::Crypto
output application/json
---
payload update {
    case first_name at .first_name if(!isEmpty(first_name)) -> lower(first_name)
    case password at .password if(!isEmpty(password)) -> dw::Crypto::SHA1(password as Binary)
    case last_name at .last_name if(!isEmpty(last_name)) -> lower(last_name)
	case date_of_birth at .date_of_birth if(!isEmpty(date_of_birth)) -> date_of_birth as String {format: "y-MM-dd"}
	case account_status at .account_status if(!isEmpty(account_status)) -> account_status
	case email_verification_status at .email_verification_status if(!isEmpty(email_verification_status)) -> email_verification_status	
} ++ {id : vars.key}
