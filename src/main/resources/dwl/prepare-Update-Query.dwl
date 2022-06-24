%dw 2.0
import * from dw::core::Strings
output application/json
---
"UPDATE users SET " ++ substringBeforeLast(vars.prepareQueryParameters joinBy " ", ",") ++ " WHERE id = :id;"