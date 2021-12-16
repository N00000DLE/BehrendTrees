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
                    <h2>Table of Contents</h2>
                    <ul>
                          <xsl:apply-templates select="$artColl//newspaperArticle" mode="toc"> 
                           
                        </xsl:apply-templates>  
                    </ul>
                </section>
                <section id="fullText"> 
                    <xsl:apply-templates select="$artColl//newspaperArticle"/>
                </section>
                
            </body>
        </html>
    </xsl:template>
    
    <!--Templates in toc mode for the table of contents -->
    <xsl:template match="newspaperArticle" mode="toc">
       <li class="issueDateTOC"> <a href="#{descendant::issueDate}"><xsl:apply-templates select="descendant::issueDate"/></a></li>
    </xsl:template>
    

    <xsl:template match="newspaperArticle">
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="title">
        <div class= "artTitle" id="{@titleId}">Title: <xsl:apply-templates/> </div>
    </xsl:template>
    <xsl:template match="issueDate">
        <div class="issueDate">Issue Date: <xsl:apply-templates/></div>
    </xsl:template>
    
    <xsl:template match="author">
        <div class= "artAuthor">Author: <xsl:apply-templates/></div>
    </xsl:template>
    
    

    
    <xsl:template match="p">
        <div class="paras"><xsl:apply-templates/></div>
    </xsl:template>
    
    <xsl:template match="publisher"></xsl:template>
    <xsl:template match="issuePage"></xsl:template>

</xsl:stylesheet>
