%dw 2.0
import * from dw::core::Strings
output application/json
---
"SELECT hashId as ID, first_name, last_name, email, account_status, email_verification_status FROM users WHERE " ++ substringBeforeLast((vars.prepareQueryParametersToFetchUserRecords joinBy " "), " AND ") ++ " LIMIT 10;"