<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0">
    <xsl:template match="warning">
        
        <xsl:if test="ancestor-or-self::*[@xml:lang][1]/@xml:lang='en'">
            <p><b>Warning! </b><xsl:apply-templates/></p>
        </xsl:if>
        <xsl:if test="ancestor-or-self::*[@xml:lang][1]/@xml:lang='de'"> 
            <p><b>Achtung! </b><xsl:apply-templates/></p>
        </xsl:if>
        
    </xsl:template>
</xsl:stylesheet>