<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0">
    <xsl:strip-space elements="*"/>
    <xsl:output omit-xml-declaration="yes" indent="yes"/>
    <xsl:template match="test">
        Previous Chapter :
        (<xsl:value-of select="preceding::chapter/title"/>)
        Next Chapter :
        (<xsl:value-of select="following::chapter/title"/>)
        
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="node()|@*">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
        </xsl:copy>
    </xsl:template>
</xsl:stylesheet>