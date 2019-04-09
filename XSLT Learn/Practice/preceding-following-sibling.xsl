<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="chapter">
        <chapter> 
            Previous chapter: (<xsl:value-of select="preceding-sibling::chapter[1]/title"/>)
            Next chapter: (<xsl:value-of select="following-sibling::chapter/title"/>) 
            <xsl:text>--------------          
            </xsl:text>
            <xsl:apply-templates/>
        </chapter>
    </xsl:template>
</xsl:stylesheet>