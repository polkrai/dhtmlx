<?php

function sqlToXml($queryResult, $rootElementName)
{ 
    $xmlData = "<?xml version=\"1.0\" encoding=\"ISO-8859-1\" ?>\n";
    $xmlData .= "<" . $rootElementName . ">";

    while($record = $queryResult->fetch(PDO::FETCH_ASSOC)) {
        foreach($record as $fieldName => $value) {
            $xmlData .=  "  <$fieldName>$value</$fieldName>\n";
        }

        /* We set empty columns with NULL, or you could set 
            it to '0' or a blank. */
        /*
        if(!empty($record->$fieldName))
            $xmlData .= $record[$fieldName]; 
        else
            $xmlData .= "null"; 
        */
	}        
  
    $xmlData .= "</" . $rootElementName . ">";
 
    return $xmlData; 
}


?>