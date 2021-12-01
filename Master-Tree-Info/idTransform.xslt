<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="3.0">
    <xsl:mode on-no-match="shallow-copy"/>
    <xsl:template match="entry">
        <entry xml:id="tree-911-{}">
            <xsl:apply-templates select="cname"/>
            <xsl:apply-templates select="sname"/>
            <xsl:apply-templates select="treeType"/>
            <xsl:apply-templates select="status"/>
            <xsl:apply-templates select="origin"/>
            <xsl:apply-templates select="height"/>
            <xsl:apply-templates select="seed"/>
            <xsl:apply-templates select="desc"/>
            <xsl:apply-templates select="leaf"/>
            <xsl:apply-templates select="long"/>
            <xsl:apply-templates select="lat"/>
            <xsl:apply-templates select="elev"/>
                
            
            
        </entry>
    </xsl:template>
</xsl:stylesheet>