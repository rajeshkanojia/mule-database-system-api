%dw 2.0
output application/json
---
vars.queryParameters update{
	case first_name at .first_name if(!isEmpty(first_name)) -> lower(first_name)
	case last_name at .last_name if(!isEmpty(last_name)) -> lower(last_name)
	case email at .email if(!isEmpty(email)) -> lower(email)
	case account_status at .account_status if(!isEmpty(account_status)) -> lower(account_status)
	case email_verification_status at .email_verification_status if(!isEmpty(email_verification_status)) -> lower(email_verification_status)
	case id at .id if(!isEmpty(id)) -> id
	case key at .key if(!isEmpty(key)) -> key
}