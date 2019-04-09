<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="1.0">
    
    <xsl:template match="winelist">
        Wines needing their "discount" value set:
        <xsl:for-each select="wine/prices/discounted[not(text())]">
            <xsl:value-of select="../../year"/><xsl:text> </xsl:text>
            <xsl:value-of select="../../winery"/><xsl:text> </xsl:text>
            <xsl:value-of select="../../product"/>
        </xsl:for-each>
    </xsl:template>
    
</xsl:stylesheet>