<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html"/>

  <xsl:template match="badges">
    <h1>Activity Badges</h1>

    <xsl:for-each select="badge[@type='activity']">
      <xsl:sort select="name" order="ascending"/>
      <xsl:call-template name="display-badge"/>
    </xsl:for-each>
    <p><i>&#xA9; College Productions Ltd</i></p>
  </xsl:template>

  <xsl:template name="display-badge">
    <h2><xsl:value-of select="name"/></h2>
    <p><xsl:value-of select="description"/></p>

    <xsl:for-each select="levels/availability">
      <p>
        <xsl:choose>
          <xsl:when test="@level = 'scout'">Scout: </xsl:when>
          <xsl:when test="@level = 'beaver'">Beaver: </xsl:when>
          <xsl:otherwise>Cub: </xsl:otherwise>
        </xsl:choose>
        <xsl:value-of select="."/>
      </p>
    </xsl:for-each>
  </xsl:template>

</xsl:stylesheet>