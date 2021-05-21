<?xml version="1.0" encoding="utf-8"?>
<!--
    FILE: PP-counting-notes.xsl
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:cc="https://niap-ccevs.org/cc/v1"
  xmlns:sec="https://niap-ccevs.org/cc/v1/section"
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:htm="http://www.w3.org/1999/xhtml"
  version="1.0">

  <!-- ############### -->
  <!--     INCLUDES     -->
  <!-- ############### -->
  <xsl:import href="../../transforms/xsl/pp2html.xsl"/>


  <xsl:template name="handle-note-header">
    <span class="note-header">
      <xsl:variable name="prefix"><xsl:choose>
        <xsl:when test="../cc:a-element[@type='D']">Developer</xsl:when>                    
        <xsl:otherwise>Application</xsl:otherwise>
      </xsl:choose> Note #</xsl:variable>
      <xsl:call-template name="make_ctr">
        <xsl:with-param name="id"   select="concat(@id,'-qq-ctr')"/>
        <xsl:with-param name="type" select="'qq-notes'"/>  
        <xsl:with-param name="prefix" select="$prefix"/>
      </xsl:call-template>
      <xsl:text>: </xsl:text> 
    </span>
  </xsl:template>


  <!-- ############### -->
  <!--                 -->
  <!-- ############### -->
  <xsl:template match="cc:usecases">
    <dl>
      <xsl:for-each select="cc:usecase">
        <dt> [USE CASE <xsl:value-of select="position()"/>] <xsl:value-of select="@title"/> </dt>
        <dd>
          <xsl:apply-templates select="cc:description"/>
          <xsl:for-each select="cc:config">
            <xsl:call-template name="use-case-and"/>
          </xsl:for-each>
        </dd>
      </xsl:for-each>
    </dl>
  </xsl:template>





</xsl:stylesheet>
 
