<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
    
<sch:pattern>
    <sch:rule context="desc">
        <sch:report role="warning" test="string-length(.) lt 500">The string-length is <sch:value-of select="string-length(.)"/>
            This description is much too short. Consider revising it. "/></sch:report>
    </sch:rule>
</sch:pattern>
    
</sch:schema>