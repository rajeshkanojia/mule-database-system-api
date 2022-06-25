%dw 2.0
output application/json
---
vars.queryParameters update {
    case first_name at .first_name if(!isEmpty(first_name)) -> "first_name = :first_name AND "
    case last_name at .last_name if(!isEmpty(last_name)) -> "last_name = :last_name AND "
    case email at .email if(!isEmpty(email)) -> "email = :email AND "
	case account_status at .account_status if(!isEmpty(account_status)) -> "account_status = :account_status AND "
	case email_verification_status at .email_verification_status if(!isEmpty(email_verification_status)) -> "email_verification_status = :email_verification_status AND "
	case id at .id if(!isEmpty(id)) -> "hashID = :id AND "
	case key at .key if(!isEmpty(key)) -> "hashKey = :key AND "
}pluck $