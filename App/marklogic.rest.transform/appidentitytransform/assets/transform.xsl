<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" exclude-result-prefixes="xdmp xhtml" extension-element-prefixes="xdmp" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml" xmlns:xdmp="http://marklogic.com/xdmp" xmlns:xhtml="http://www.w3.org/1999/xhtml" xmlns:map="http://marklogic.com/xdmp/map" xmlns:search="http://marklogic.com/appservices/search">
  <xdmp:import-module namespace="http://marklogic.com/appservices/search" href="/MarkLogic/appservices/search/search.xqy"/>
  <xsl:param name="context" as="map:map"/>
  <xsl:param name="params" as="map:map"/>
  <xsl:variable name="mode" select="(map:get($params,&quot;mode&quot;),&quot;full&quot;)[1]"/>
  <xsl:variable name="docid" select="tokenize(map:get($params,&quot;docid&quot;),&quot;,&quot;)"/>
  <xsl:template match="/" as="item()*">
 <xsl:choose>
   <xsl:when test="node()[xdmp:node-kind(.) eq 'binary']">   
     <xsl:sequence select="map:put($context,'output-type','*/*')"/>
     <xsl:sequence select="."/>
   </xsl:when>
 <xsl:otherwise>
   <xsl:choose>
    <xsl:when test="$mode eq 'info'">
      <xsl:apply-templates select="/" mode="info"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:apply-templates select="/" mode="full"/>
    </xsl:otherwise>
  </xsl:choose>   
 </xsl:otherwise>
 </xsl:choose> 
</xsl:template>
  <xsl:template match="/" mode="full" as="item()*">
  <xsl:copy-of select="map:get($params,'mode')" copy-namespaces="no"/>
          <xsl:apply-templates select="//video"/>
</xsl:template>
  <xsl:include href="/application/app-content.xsl"/>
</xsl:stylesheet>