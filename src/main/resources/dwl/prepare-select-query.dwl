%dw 2.0
import * from dw::core::Strings
output application/json
---
"SELECT hashID as ID, first_name as FirstName, last_name as LastName, email as UserEmail, account_status as AccountStatus, email_verification_status as EmailVerificationStatus FROM users WHERE " ++ substringBeforeLast((vars.prepareQueryParametersToFetchUserRecords joinBy " "), " AND ") ++ " LIMIT 10;"