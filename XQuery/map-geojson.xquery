xquery version "3.1";

declare namespace output="http://www.w3.org/2010/xslt-xquery-serialization";
declare default element namespace "http://www.w3.org/2005/xpath-functions";


declare option output:method "json";
declare option output:media-type "application/json"; 


let $json := xml-to-json(., map{"indent":true()})

return $json
