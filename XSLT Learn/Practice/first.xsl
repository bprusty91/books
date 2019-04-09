<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0">
    
   
    <xsl:template match="prices">
        parent element's grape:
        <xsl:value-of select="parent::wine/attribute::grape"/>
    </xsl:template>
</xsl:stylesheet>