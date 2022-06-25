%dw 2.0
var myFile = (vars.outputFormat default "json" as String) match{
	case "json" -> 'json.dwl'
	case "xml" -> 'xml.dwl'
	else -> 'json.dwl'	
}
output application/java
---
readUrl( 'classpath://output-format/' ++ myFile, "text/plain")