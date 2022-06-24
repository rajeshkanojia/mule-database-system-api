%dw 2.0
output application/json
---
payload update {
    case first_name at .first_name if(!isEmpty(first_name)) -> "first_name = :first_name,"
    case password at .password if(!isEmpty(password)) -> "password = :password,"
    case last_name at .last_name if(!isEmpty(last_name)) -> "last_name = :last_name,"
	case date_of_birth at .date_of_birth if(!isEmpty(date_of_birth)) -> "date_of_birth = :date_of_birth,"
	case account_status at .account_status if(!isEmpty(account_status)) -> "account_status = :account_status,"
	case email_verification_status at .email_verification_status if(!isEmpty(email_verification_status)) -> "email_verification_status = :email_verification_status,"	
} ++ { id : ":id" }pluck $