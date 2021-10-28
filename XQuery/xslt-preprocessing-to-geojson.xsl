<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    xmlns="http://www.w3.org/2005/xpath-functions"
    exclude-result-prefixes="xs math"
    version="3.0">
    
    <!-- 
    {
  "type": "Feature",
  "properties": {
    "name": "Mount Ruapehu",
    "id": "tree-1"
    "elevation_m": 2797

  },
  "geometry": {
    "type": "Point",
    "coordinates": [
      175.55890560150146,
      -39.28834275351452,
      2797
    ]
  }
}
   
   
   CHANGE below to output super simple XML elements to map directly to this JSON. 
   
    -->
    <xsl:template match="/">

        <xsl:apply-templates/>
        
    </xsl:template>
    <xsl:template match="btrees">
        <xml>
            <xsl:apply-templates/>
        </xml>
        
    </xsl:template>
    
</xsl:stylesheet>