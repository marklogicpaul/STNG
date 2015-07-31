<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" exclude-result-prefixes="html" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml" xmlns:html="http://www.w3.org/1999/xhtml">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>
  <xsl:template match="video">
  	<video class="episode_link" preload="metadata" controls="" autoplay="" onload="play()" style="object-fit:contain" id="video" width="348" height="290">
  		<source>
  			<xsl:attribute name="src">
  				<xsl:value-of select="source/@src"/>
  			</xsl:attribute>
  			<xsl:attribute name="type">
  				<xsl:value-of select="source/@type"/>
  			</xsl:attribute>
        <xsl:attribute name="title">
          <xsl:value-of select="concat('Season ',../episode/season_number/text(),': ',../episode/episode_name/text())"/>
        </xsl:attribute>
  		</source>
  	</video>
  	<div style="position:absolute;bottom:60px;right:7px;z-index:5;">
  	<p style="font-family: 'Lucida Grande';font-size:12px;color:white;text-decoration:outline;text-shadow:4px 4px 4px #666;"><xsl:value-of select="concat('Season ',../episode/season_number/text(),': ',../episode/episode_name/text())"/></p>
  	</div>
  </xsl:template>
</xsl:stylesheet><!--autoplay=""-->
