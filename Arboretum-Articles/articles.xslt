<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="yes" 
        include-content-type="no" indent="yes"/>
    
    <xsl:variable name="artColl" select="collection('XML/?select=*.xml')"/>   
    <xsl:template match="/">
        <html>
            <head>
                <title>Arobretum Articles</title>
                <link rel="stylesheet" type="text/css" href="articleXSLT.css"/>
            </head>
            <body>
                <h1>Arobretum Articles</h1>
                
                <section id="toc">
                    <h2>Contents</h2>
                    <ul>
                        <xsl:apply-templates select="$artColl//newspaperArticle" mode="toc">
                            <xsl:sort select="body//header//title"/>
                        </xsl:apply-templates>   
                    </ul>
                </section>
                <section id="fullArticleText"> 
                    <xsl:apply-templates select="$artColl//newspaperArticle"/>
                </section>
                
            </body>
        </html>
    </xsl:template>
    
    <!--Templates in toc mode for the table of contents -->
    <xsl:template match="newspaperArticle" mode="toc">
        <li><a href="{descendant::issueDate}"></a></li>
    </xsl:template>
    
    
    <!--Normal templates for fulltext view -->
    <!--<xsl:template match="xml">
        <xsl:apply-templates/> 
    </xsl:template>-->
    
    
   <xsl:template match="header">
        <li class="headers"><xsl:apply-templates/>
        </li>
       
    </xsl:template>
    <xsl:template match="issueDate">
        <li class="headers">
            <xsl:apply-templates/>
        </li>
    </xsl:template>
    <xsl:template match="header">
        <div class="headers">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    

    
    <xsl:template match="p">
        <div class="paras"><span class="pNum"><xsl:value-of select="@n"/></span><xsl:apply-templates/></div>
    </xsl:template>
    
    <xsl:template match="publisher"></xsl:template>
    <xsl:template match="issuePage"></xsl:template>

</xsl:stylesheet>
