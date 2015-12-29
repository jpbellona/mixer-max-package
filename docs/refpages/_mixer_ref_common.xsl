<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:strip-space elements="*"/>

  <xsl:variable name="doctype" select="'refpage'"/>

	<xsl:include href='../_mixer_platform.xsl'/>
	
  <xsl:variable name="jargon_enable">
    <xsl:choose>
      <xsl:when test="$compliant=1">
        <xsl:value-of select="document('../_mixer_common.xml')/root/setting[@name='jargon_enable']/@value"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="document('../../_mixer_common.xml')/root/setting[@name='jargon_enable']/@value"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:variable>

  <xsl:variable name="jargon_mouseover">
    <xsl:choose>
      <xsl:when test="$compliant=1">
        <xsl:value-of select="document('../_mixer_common.xml')/root/setting[@name='jargon_mouseover']/@value"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="document('../../_mixer_common.xml')/root/setting[@name='jargon_mouseover']/@value"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:variable>

  <xsl:variable name="refs_root_loc">
    <xsl:choose> 
      <xsl:when test="$compliant=1"> 
        <xsl:value-of select="'./refpages'"/>
      </xsl:when>  
      <xsl:otherwise>  
        <xsl:value-of select="'../../refpages'"/>  
      </xsl:otherwise>  
    </xsl:choose>  
  </xsl:variable>

  <xsl:variable name="refs_root_loc_local">
    <xsl:choose> 
      <xsl:when test="$compliant=1"> 
        <xsl:value-of select="'../refpages'"/>
      </xsl:when>  
      <xsl:otherwise>  
        <xsl:value-of select="'../../refpages'"/>  
      </xsl:otherwise>  
    </xsl:choose>  
  </xsl:variable>

  <xsl:variable name="refs_root_link" select="'../../refpages'"/>
  
  <xsl:variable name="patchname" /> <!-- for openfilefront -->
  <xsl:variable name="patchfile" /> <!-- for openfilefront -->
  
  <xsl:variable name="reftitle">
    <xsl:choose>
      <xsl:when test="/liveapidoc/@title">
        <xsl:value-of select="/liveapidoc/@title"/>
      </xsl:when>
      <xsl:when test="/c74object/@title">
        <xsl:value-of select="/c74object/@title"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="/c74object/@name"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:variable>

  <xsl:template match="/">
    <html>
      <head>
        <link rel="stylesheet" type="text/css" href="../../_mixer_common.css"/>
        <title><xsl:value-of select="$reftitle"/>
        <xsl:if test="not(/c74object/@title)"><xsl:text> Reference</xsl:text></xsl:if>
        </title>
      </head>
      <body>
<!-- 
			Go and apply all the templates for the root
			-->
        <xsl:apply-templates/>
      </body>
    </html>
  </xsl:template>

<!-- 
			c74object: root element; this determines how the entire doc will be rendered
			-->
  <xsl:template match="c74object">
    <xsl:choose>
      <xsl:when test="@private='1'"><h2>This file for Cycling '74 internal use only.</h2></xsl:when>
      <xsl:otherwise>
        <h1>
          <xsl:value-of select="$reftitle"/>
        </h1>
        <xsl:apply-templates select="digest"/>
        <h2>Description</h2>
        <xsl:apply-templates select="description"/>
        <xsl:apply-templates select="liveapi_object"/>
        <xsl:apply-templates select="mop"/>
        <xsl:apply-templates select="OB3D"/>
        <xsl:apply-templates select="objarglist"/>
        <xsl:apply-templates select="apiinletlist"/>
        <xsl:apply-templates select="apioutletlist"/>
        <xsl:apply-templates select="methodlist"/>
        <xsl:apply-templates select="attributelist"/>
        <xsl:apply-templates select="entrylist"/>
        <xsl:apply-templates select="parameter"/>
        <!-- box attr link -->
        <xsl:if test="/c74object/@name != 'mixer' and not(/c74object/@box=0)">
          <h4>
            <a>
              <xsl:attribute name="href">
                <xsl:choose>
                  <xsl:when test="document(concat($refs_root_loc_local,'/max-ref/_mixer_contents.xml'))/root/refpage[@name='jbox.maxref.xml']">
                    <xsl:value-of select="concat($refs_root_link,'/max-ref/jbox.maxref.xml')"/>
                  </xsl:when>
                  <xsl:when test="document(concat($refs_root_loc_local,'/kernel-ref/_mixer_contents.xml'))/root/refpage[@name='jbox.maxref.xml']">
                    <xsl:value-of select="concat($refs_root_link,'/kernel-ref/jbox.maxref.xml')"/>
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:value-of select="concat($refs_root_link,'/max-ref/jbogus.maxref.xml')"/>
                  </xsl:otherwise>
                </xsl:choose>
              </xsl:attribute>
              Information for box attributes common to all objects
            </a>
          </h4>
        </xsl:if>
        <!-- end box attr link -->
        <xsl:apply-templates select="menuitemlist"/>
        <xsl:apply-templates select="misc"/>
        <xsl:apply-templates select="examplelist"/>
        <xsl:apply-templates select="seealsolist"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
<!-- 
			liveapidoc: root element; this determines how the entire doc will be rendered
			-->
  <xsl:template match="liveapidoc">
    <h1>
      <xsl:value-of select="$reftitle"/>
    </h1>
    <xsl:apply-templates select="digest"/>
    <xsl:apply-templates select="intro"/>
    <xsl:apply-templates select="chapter"/>
    <xsl:apply-templates select="liveapi_object"/>
    <xsl:apply-templates select="misc"/>
    <xsl:apply-templates select="seealsolist"/>
  </xsl:template>
<!-- 
			a few common elements
			-->
    
  <xsl:template match="digest">
    <p class="digest">
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="description">
    <xsl:apply-templates/>
  </xsl:template>

  <xsl:template match="intro">
    <h2>Introduction</h2>
    <p>
    <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="chapter">
    <h2><xsl:value-of select="@name"/></h2>
    <p>
    <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="sig">
    <i>
      <xsl:apply-templates/>
    </i>
  </xsl:template>
    
<!-- 
			don't draw metadata
			-->
  <xsl:template match="metadatalist"/>
<!-- 
			markup elements
			-->
<!-- 
			Inlets
			-->
  <xsl:template match="inletlist">
    <div id="inlet_section">
      <h2>Inlets</h2>
      <table>
        <tr>
          <th>
		      <xsl:text>Name</xsl:text>
		    </th>
          <th>
            <b>Description</b>
          </th>
        </tr>
        <xsl:for-each select="inlet">
          <tr>
            <xsl:choose>
              <xsl:when test="position() mod 2 = 0">
                <xsl:attribute name="class">row_even</xsl:attribute>
              </xsl:when>
              <xsl:otherwise>
                <xsl:attribute name="class">row_odd</xsl:attribute>
              </xsl:otherwise>
            </xsl:choose>
            <td>
              <xsl:value-of select="@name"/>
            </td>
            <td>
              <xsl:apply-templates/>
            </td>
          </tr>
        </xsl:for-each>
      </table>
    </div>
<!-- id="inlet_section" -->
  </xsl:template>
<!-- 
			Outlets
			-->
  <xsl:template match="outletlist">
    <div id="outlet_section">
      <h2>Outlets</h2>
      <table>
        <tr>
          <td width="30%">
            <b>Name</b>
          </td>
          <td>
            <b>Description</b>
          </td>
        </tr>
        <xsl:for-each select="outlet">
          <tr>
            <xsl:choose>
              <xsl:when test="position() mod 2 = 0">
                <xsl:attribute name="class">row_even</xsl:attribute>
              </xsl:when>
              <xsl:otherwise>
                <xsl:attribute name="class">row_odd</xsl:attribute>
              </xsl:otherwise>
            </xsl:choose>
            <td>
              <xsl:value-of select="@name"/>
            </td>
            <td>
              <xsl:apply-templates/>
            </td>
          </tr>
        </xsl:for-each>
      </table>
    </div>
<!-- id="outlet_section" -->
  </xsl:template>
<!-- 
			Arguments
			-->
  <xsl:template match="objarglist">
        <div id="argument_section">
          <h2>Arguments</h2>
    <xsl:variable name="none">
<!--		<xsl:for-each select="objarg"> -->
      <xsl:if test="not(objarg) or translate(objarg/description, ' &#9;&#13;&#10;', ' ')='None.' or (count(objarg)=1 and translate(objarg/description, ' &#9;&#13;&#10;', ' ')='TEXT_HERE')">1</xsl:if>
<!--		</xsl:for-each> -->
    </xsl:variable>
    <xsl:variable name="nested">
      <xsl:if test="parent::objarg">1</xsl:if>
    </xsl:variable>
    <xsl:choose>
      <xsl:when test="$none='1' and $nested=''">
          <div class="description">None.</div>
      </xsl:when>
      <xsl:otherwise>
          <table>
            <xsl:choose>
              <xsl:when test="$nested=''">
                <xsl:attribute name="width">100%</xsl:attribute>
                <tr>
                  <th>Name</th>
                  <th>Type</th>
                  <th>Opt</th>
                  <th class="description">Description</th>
                </tr>
              </xsl:when>
              <xsl:otherwise>
                <xsl:attribute name="width">95%</xsl:attribute>
                <xsl:attribute name="class">indented</xsl:attribute>
              </xsl:otherwise>
            </xsl:choose>
            <xsl:for-each select="objarg">
              <tr>
                <xsl:choose>
                  <xsl:when test="position() mod 2 = 0">
                    <xsl:choose>
                      <xsl:when test="$nested=''">
                        <xsl:attribute name="class">row_even</xsl:attribute>
                      </xsl:when>
                      <xsl:otherwise>
                        <xsl:attribute name="class">row_even_nested</xsl:attribute>
                      </xsl:otherwise>
                    </xsl:choose>
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:choose>
                      <xsl:when test="$nested=''">
                        <xsl:attribute name="class">row_odd</xsl:attribute>
                      </xsl:when>
                      <xsl:otherwise>
                        <xsl:attribute name="class">row_odd_nested</xsl:attribute>
                      </xsl:otherwise>
                    </xsl:choose>
                  </xsl:otherwise>
                </xsl:choose>
                <td>
                  <xsl:value-of select="@name"/>
                </td>
                <td>
                  <xsl:value-of select="@type"/>
                </td>
                <td class="optional">
                  <xsl:if test="@optional = 1">
	                  <xsl:text>opt</xsl:text>
	                </xsl:if>
                </td>
                <td class="description">
                  <xsl:apply-templates select="description"/>
                </td>
              </tr>
<!-- TODO: Is the following needed anymore? come back to it later [TAP] ... -->
              <xsl:if test="objarglist">
                <tr>
                  <td colspan="4">
                    <xsl:apply-templates select="./objarglist"/>
                  </td>
                </tr>
              </xsl:if>
            </xsl:for-each>
          </table>
      </xsl:otherwise>
    </xsl:choose>
        </div><!-- id="argument_section" -->
  </xsl:template>
<!-- 
			Methods
			-->
  <xsl:template name="method">
    <xsl:param name="showname"/>
    <tr>
      <xsl:choose>
        <xsl:when test="position() mod 2 = 0">
          <xsl:attribute name="class">row_even</xsl:attribute>
        </xsl:when>
        <xsl:otherwise>
          <xsl:attribute name="class">row_odd</xsl:attribute>
        </xsl:otherwise>
      </xsl:choose>
      <td>
        <xsl:choose>
          <xsl:when test="$showname=''">
            <xsl:value-of select="@name"/>
          </xsl:when>
          <xsl:otherwise>
            <span class="inletname">&#xA0;&#xA0;(inlet<xsl:value-of select="$showname"/>)</span>
          </xsl:otherwise>
        </xsl:choose>
      </td>
      <xsl:choose>
        <xsl:when test="arglist">
          <xsl:apply-templates select="arglist"/>
        </xsl:when>
        <xsl:otherwise><td/></xsl:otherwise>
      </xsl:choose>
      <td class="description">
        <xsl:apply-templates select="description"/>
      </td>
    </tr>
  </xsl:template>
  <xsl:template match="methodlist">
    <div id="method_section">
      <h2>Messages</h2>
      <table>
        <xsl:for-each select="method">
          <xsl:choose>
            <xsl:when test="@name='int'">
              <xsl:call-template name="method">
                <xsl:with-param name="showname"/>
              </xsl:call-template>
              <xsl:for-each select="../method">
                <xsl:sort select="@name"/>
                <xsl:if test="starts-with(@name,'in') and string-length(@name)=3 and translate(@name, '123456789', '')='in'">
                  <xsl:call-template name="method">
                    <xsl:with-param name="showname" select="substring-after(@name,'in')"/>
                  </xsl:call-template>
                </xsl:if>
              </xsl:for-each>
            </xsl:when>
            <xsl:when test="@name='float'">
              <xsl:call-template name="method">
                <xsl:with-param name="showname"/>
              </xsl:call-template>
              <xsl:for-each select="../method">
                <xsl:sort select="@name"/>
                <xsl:if test="starts-with(@name,'ft') and string-length(@name)=3 and translate(@name, '123456789', '')='ft'">
                  <xsl:call-template name="method">
                    <xsl:with-param name="showname" select="substring-after(@name,'ft')"/>
                  </xsl:call-template>
                </xsl:if>
              </xsl:for-each>
            </xsl:when>
            <xsl:when test="starts-with(@name,'in') and string-length(@name)=3 and translate(@name, '123456789', '')='in'"/>
            <xsl:when test="starts-with(@name,'ft') and string-length(@name)=3 and translate(@name, '123456789', '')='ft'"/>
            <xsl:otherwise>
              <xsl:call-template name="method">
                <xsl:with-param name="showname"/>
              </xsl:call-template>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:for-each>
      </table>
    </div>
<!-- id="method_section" -->
  </xsl:template>
<!-- 
			Attributes
			-->
  <xsl:template match="attributelist">
    <div id="method_section">
      <h2>Attributes</h2>
      <table>
        <tr>
          <th>Name</th>
          <th>Type</th>
          <th>g/s</th>
          <th class="description">Description</th>
        </tr>
        <xsl:for-each select="attribute">
<!-- using a variable to filter out box attrs! -->
          <xsl:variable name="boxattr">
            <xsl:if test="/c74object[@name!='jbox'] and attributelist/attribute[@name='jboxattr'] and attributelist/attribute[@value=1]">1</xsl:if>
          </xsl:variable>
          <xsl:variable name="alias">
            <xsl:if test="attributelist/attribute[@name='alias']">1</xsl:if>
          </xsl:variable>
          <xsl:if test="$boxattr='' and $alias=''">
            <tr>
              <xsl:choose>
                <xsl:when test="position() mod 2 = 0">
                  <xsl:attribute name="class">row_even</xsl:attribute>
                </xsl:when>
                <xsl:otherwise>
                  <xsl:attribute name="class">row_odd</xsl:attribute>
                </xsl:otherwise>
              </xsl:choose>
              <td>
                <xsl:value-of select="@name"/>
              </td>
              <td>
                <xsl:value-of select="@type"/>
                <xsl:if test="attributelist/attribute[@name='default']"><br />
                  <span class="defaultval">def.:<xsl:value-of select="attributelist/attribute[@name='default']/@value"/></span>
                </xsl:if>
              </td>
              <td>
                <xsl:choose>
                  <xsl:when test="@get=1 and @set=1">
                  </xsl:when>
                  <xsl:when test="@get=1">
                    (get)
                  </xsl:when>
                  <xsl:when test="@set=1">
                    (set)
                  </xsl:when>
                  <xsl:otherwise>
                    invisible <!-- should not be shown -->
                  </xsl:otherwise>
                </xsl:choose>
              </td>
              <td class="description">
                <xsl:apply-templates select="description"/>
              </td>
            </tr>
          </xsl:if>
        </xsl:for-each>
        <xsl:for-each select="attribute_rgb_legacy">
          <xsl:variable name="boxattr">
            <xsl:if test="/c74object[@name!='jbox'] and attributelist/attribute[@name='jboxattr'] and attributelist/attribute[@value=1]">1</xsl:if>
          </xsl:variable>
          <xsl:if test="position() = 1">
            <tr><td colspan="4"><h3>Legacy</h3></td></tr>
          </xsl:if>
          <xsl:if test="$boxattr=''">
            <tr>
              <xsl:choose>
                <xsl:when test="position() mod 2 = 0">
                  <xsl:attribute name="class">row_even</xsl:attribute>
                </xsl:when>
                <xsl:otherwise>
                  <xsl:attribute name="class">row_odd</xsl:attribute>
                </xsl:otherwise>
              </xsl:choose>
              <td>
                <xsl:value-of select="@name"/>
              </td>
              <td>
                <xsl:text>list (3 ints)</xsl:text>
              </td>
              <xsl:choose>
                <xsl:when test="@get=1 and @set=1">
                  <td/>
                </xsl:when>
                <xsl:when test="@get=1">
                  <td>(get)</td>
                </xsl:when>
                <xsl:when test="@set=1">
                  <td>(set)</td>
                </xsl:when>
                <xsl:otherwise>
                  <td>invisible</td>
<!-- should not be shown -->
                </xsl:otherwise>
              </xsl:choose>
              <td class="description">
                <xsl:if test="attributelist/attribute[@name='default']">
                  <xsl:attribute name="rowspan">2</xsl:attribute>
                </xsl:if>
                <!-- <span class="attrname"><xsl:value-of select="@name"/></span> is a legacy RGB alias for the <span class="attrname"><xsl:value-of select="attributelist/attribute[@name='alias']/@value"/></span> attribute. See <a href="../../vignettes/core/maxcolor/maxcolor.maxvig.xml">here</a> for more information. -->
                <xsl:apply-templates select="description"/>
              </td>
            </tr>
          </xsl:if>
        </xsl:for-each>
      </table>
    </div>
<!-- id="attr_section" -->
  </xsl:template>

  <xsl:template match="entrylist">
    <div id="method_section">
      <h2><xsl:value-of select="@name"/></h2>
      <table>
        <tr>
          <th>Name</th>
          <th>Type</th>
          <th class="description">Description</th>
        </tr>
        <xsl:for-each select="entry">
          <tr>
            <xsl:choose>
              <xsl:when test="position() mod 2 = 0">
                <xsl:attribute name="class">row_even</xsl:attribute>
              </xsl:when>
              <xsl:otherwise>
                <xsl:attribute name="class">row_odd</xsl:attribute>
              </xsl:otherwise>
            </xsl:choose>
            <td>
              <xsl:value-of select="@name"/>
            </td>
            <td>
              <xsl:value-of select="@type"/>
            </td>
            <td>
              <xsl:value-of select="description"/>
            </td>
          </tr>
        </xsl:for-each>
      </table>
    </div>
  </xsl:template>

<!-- 
			Arguments (methods)
			-->
  <xsl:template match="arglist">
    <xsl:choose>
      <xsl:when test="arg">
        <td>
          <xsl:for-each select="arg">
            <span class="arglist_arg"><xsl:value-of select="@name"/> [<xsl:value-of select="@type"/>]<br/></span>
          </xsl:for-each>
        </td>
      </xsl:when>
      <xsl:otherwise>
        <td/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  <!-- 
  			Menu Items
  			-->
  <xsl:template match="menuitemlist">
    <xsl:if test="menuitem">
      <div id="argument_section">
        <h2>Menu Items</h2>
        <table>
          <tr>
            <th class="name">Name</th>
            <th class="description">Description</th>
          </tr>
          <xsl:for-each select="menuitem">
            <tr>
              <xsl:choose>
                <xsl:when test="position() mod 2 = 0">
                  <xsl:attribute name="class">row_even</xsl:attribute>
                </xsl:when>
                <xsl:otherwise>
                  <xsl:attribute name="class">row_odd</xsl:attribute>
                </xsl:otherwise>
              </xsl:choose>
              <td>
                <xsl:value-of select="@name"/>
              </td>
              <td class="description">
                <xsl:apply-templates select="description"/>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </div>
    </xsl:if>
  </xsl:template>
<!-- 
			Examples
			-->
  <xsl:template match="examplelist">
    <xsl:variable name="imgname">
      <xsl:call-template name="name_replace">
        <xsl:with-param name="name" select="/c74object/@name"/>
      </xsl:call-template>
    </xsl:variable>
    <div id="examples_section">
      <h2>Examples</h2>
      <div class="imagebox">
      <xsl:for-each select="example">
        <img>
          <xsl:attribute name="src">
            <xsl:value-of select="concat('images/', $imgname, '.png')" />
          </xsl:attribute>
        </img>
			  <div class="caption"><xsl:value-of select="@caption"/></div>
		  </xsl:for-each>
      </div>
      <xsl:apply-templates/>
    </div>
<!-- id="examples_section" -->
  </xsl:template>
<!-- 
			"misc": Output, Inspector, etc.
			-->
  <xsl:template match="misc">
    <div id="misc_section">
      <h2>
        <xsl:value-of select="@name"/>
      </h2>
      <xsl:for-each select="entry">
        <xsl:sort select="@name"/>
        <div class="outputmessage">
          <xsl:value-of select="@name"/>: 
          <span class="description">
            <xsl:apply-templates select="description"/>
          </span>
        </div>
        <!-- I WANT TO BE ABLE TO FILTER OUT LABEL IF PREVIOUS MATCHES @name
              BUT THIS IS IMPOSSIBLE IN XSLT 1.0 -->
        <!-- <div class="outputmessage">
          <xsl:if test="$oldname != @name">
            <div class="name"><xsl:value-of select="@name"/>:</div>
          </xsl:if>
          <xsl:apply-templates select="digest"/>
        </div>
        <div class="description">
          <xsl:apply-templates select="description"/>
        </div> -->
       </xsl:for-each>
    </div>
<!-- id="misc_section" -->
  </xsl:template>

  <xsl:template name="lastword">
    <xsl:param name="in" />
    <xsl:choose>
      <xsl:when test="substring-after($in, ' ')!=''">
        <xsl:call-template name="lastword">
          <xsl:with-param name="in" select="substring-after($in, ' ')"/>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise><xsl:value-of select="$in"/></xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  
  <xsl:template match="liveapi_object">
    <div id="liveapi_section">
      <h3>
        <a>
          <xsl:attribute name="name"><xsl:value-of select="@name" /></xsl:attribute>
          <xsl:value-of select="@name"/>
        </a>
      </h3>
      <p>
      <span class="description">
        <xsl:apply-templates select="description"/>
      </span>
      <div id="liveapi_section">
      <xsl:apply-templates select="liveapi_path"/>
      <xsl:apply-templates select="liveapi_children"/>
      <xsl:apply-templates select="liveapi_properties"/>
      <xsl:apply-templates select="liveapi_functions"/>
      </div>
      </p>
    </div>
  </xsl:template>

  <xsl:template match="liveapi_path">
    <xsl:param name="path" />
    <h4>Canonical path</h4>
    <span class="path">
      <xsl:value-of select="@path"/>
    </span>
  </xsl:template>

  <xsl:template name="liveapi_typelink">
    <xsl:param name="type" />
    <xsl:variable name="trim">
      <xsl:call-template name="lastword">
        <xsl:with-param name="in" select="$type"/>
      </xsl:call-template>
    </xsl:variable>
	<xsl:value-of select="substring-before($type, $trim)" />
	<a>
	  <xsl:attribute name="href"><xsl:value-of select="concat('#', $trim)"/></xsl:attribute>
	  <xsl:value-of select="$trim"/>
	</a>
  </xsl:template>

  <xsl:template match="liveapi_children">
    <h4>Children</h4>
    <xsl:choose>
    	<xsl:when test="count(liveapi_child) > 0">
		    <table>
		      <tr>
		        <th>Name</th>
		        <th>Type</th>
		        <th width="14%">Access</th>
		        <th width="50%">Description</th>
		      </tr>
			    <xsl:for-each select="liveapi_child">
			      <tr>
			        <td><xsl:value-of select="@name"/></td>
			        <td>
			          <xsl:call-template name="liveapi_typelink">
			          <xsl:with-param name="type" select="@type"/>
			          </xsl:call-template>
			        </td>
		          <td>
		          	<xsl:choose>
			          	<xsl:when test="@gso='gso'">get, set, observe</xsl:when>
			          	<xsl:when test="@gso='gs-'">get, set</xsl:when>
			          	<xsl:when test="@gso='g-o'">get, observe</xsl:when>
			          	<xsl:when test="@gso='-so'">set, observe</xsl:when>
			          	<xsl:when test="@gso='g--'">get</xsl:when>
			          	<xsl:when test="@gso='-s-'">set</xsl:when>
			          	<xsl:when test="@gso='--o'">observe</xsl:when>
			          	<xsl:otherwise>none</xsl:otherwise>
		          	</xsl:choose>
		          </td>
			        <td class="description"><xsl:apply-templates select="description"/></td>
			      </tr>
			    </xsl:for-each>
		    </table>
      </xsl:when>
      <xsl:otherwise>
        <div class="none">
          None
        </div>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="liveapi_properties">
    <h4>Properties</h4>
    <xsl:choose>
    	<xsl:when test="count(liveapi_property) > 0">
        <table>
          <tr>
            <th>Name</th>
            <th>Type</th>
            <th width="14%">Access</th>
            <th width="50%">Description</th>
          </tr>
          <xsl:for-each select="liveapi_property">
	          <tr>
	            <td><xsl:value-of select="@name"/></td>
	            <td>
	              <xsl:call-template name="liveapi_typelink">
	                <xsl:with-param name="type" select="@type"/>
	              </xsl:call-template>
	            </td>
		          <td>
		          	<xsl:choose>
			          	<xsl:when test="@gso='gso'">get, set, observe</xsl:when>
			          	<xsl:when test="@gso='gs-'">get, set</xsl:when>
			          	<xsl:when test="@gso='g-o'">get, observe</xsl:when>
			          	<xsl:when test="@gso='-so'">set, observe</xsl:when>
			          	<xsl:when test="@gso='g--'">get</xsl:when>
			          	<xsl:when test="@gso='-s-'">set</xsl:when>
			          	<xsl:when test="@gso='--o'">observe</xsl:when>
			          	<xsl:otherwise>none</xsl:otherwise>
		          	</xsl:choose>
		          </td>
	            <td class="description"><xsl:apply-templates select="description"/></td>
	          </tr>
          </xsl:for-each>
        </table>
      </xsl:when>
      <xsl:otherwise>
        <div class="none">
          None
        </div>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="liveapi_functions">
      <h4>Functions</h4>
      <table>
        <tr>
          <th>Name</th>
          <th width="50%">Description</th>
        </tr>
      <xsl:for-each select="liveapi_function">
        <tr>
          <td><xsl:value-of select="@name"/></td>
          <td class="description"><xsl:apply-templates select="description"/></td>
        </tr>
      </xsl:for-each>
    </table>
  </xsl:template>

<!-- 
			MOP: Jitter
			-->
  <xsl:template match="mop">
    <div id="mop_section">
      <h2>Matrix Operator</h2>
      <div>matrix inputs:<xsl:value-of select="@matrixinputcount"/>, matrix outputs:<xsl:value-of select="@matrixoutputcount"/></div>
      <table>
        <tr>
          <td>Name</td>
          <td>IOProc</td>
          <td>Planelink</td>
          <td>Typelink</td>
          <td>Dimlink</td>
          <td>Plane</td>
          <td>Dim</td>
          <td>Type</td>
        </tr>
			<xsl:for-each select="matrixinput">
			  <tr>
				<td><xsl:value-of select="@name"/></td>
        <td><xsl:value-of select="@ioproc"/></td>
        <td><xsl:value-of select="@planelink"/></td>
        <td><xsl:value-of select="@typelink"/></td>
        <td><xsl:value-of select="@dimlink"/></td>
        <td><xsl:value-of select="@minplanecount"/></td>
        <td><xsl:value-of select="@mindimcount"/></td>
        <td><xsl:value-of select="types"/></td>
			  </tr>
			</xsl:for-each>
			<xsl:for-each select="matrixoutput">
			  <tr>
			  <td><xsl:value-of select="@name"/></td>
				<td><!--<xsl:value-of select="@ioproc"/> -->n/a</td>
        <td><xsl:value-of select="@planelink"/></td>
        <td><xsl:value-of select="@typelink"/></td>
        <td><xsl:value-of select="@dimlink"/></td>
        <td><xsl:value-of select="@minplanecount"/></td>
        <td><xsl:value-of select="@mindimcount"/></td>
        <td><xsl:value-of select="types"/></td>
			  </tr>
			</xsl:for-each>
		</table>
    </div>
    <!-- <xsl:value-of select="concat($refs_root_loc_local,'/jit-ref/_mixer_contents.xml')" /> -->
    <a>
      <xsl:attribute name="href">
        <xsl:choose>
          <xsl:when test="document(concat($refs_root_loc_local,'/jit-ref/_mixer_contents.xml'))/root/refpage[@name='jit.group-mop.maxref.xml']">
            <xsl:value-of select="concat($refs_root_link,'/jit-ref/jit.group-mop.maxref.xml')"/>
          </xsl:when>
          <xsl:otherwise>
            <xsl:value-of select="concat($refs_root_link,'/max-ref/jbogus.maxref.xml')"/>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:attribute>
      <h4>Information for Jitter Matrix Operator (MOP) messages and attributes to this object</h4>
    </a>
    
<!-- id="mop_section" -->
  </xsl:template>
<!-- 
			OB3D: Jitter
			-->
  <xsl:template match="OB3D">
    <div id="ob3d_section">
      <a>
        <xsl:attribute name="href">
          <xsl:choose>
            <xsl:when test="document(concat($refs_root_loc_local,'/jit-ref/_mixer_contents.xml'))/root/refpage[@name='jit.group-gl.maxref.xml']">
              <xsl:value-of select="concat($refs_root_link,'/jit-ref/jit.group-gl.maxref.xml')"/>
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="concat($refs_root_link,'/max-ref/jbogus.maxref.xml')"/>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:attribute>
        <h4>Information for Jitter 3D Object (OB3D) messages and attributes to this object</h4>
      </a>
    </div>
<!-- id="ob3d_section" -->
  </xsl:template>

  <!-- Parameter section -->
    <xsl:template match="parameter">
      <div id="parameter_section">
        <a>
          <xsl:attribute name="href">
            <xsl:choose>
              <xsl:when test="document(concat($refs_root_loc_local,'/m4l-ref/_mixer_contents.xml'))/root/refpage[@name='parameters.maxref.xml']">
                <xsl:value-of select="concat($refs_root_link,'/m4l-ref/parameters.maxref.xml')"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:value-of select="concat($refs_root_link,'/max-ref/jbogus.maxref.xml')"/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
          <h4>Information about attributes available for Parameter-aware objects</h4>
        </a>
      </div>
    </xsl:template>

  <xsl:template match="o">
    <xsl:call-template name="object_link">
      <xsl:with-param name="name" select="."/>
      <xsl:with-param name="objname" select="@objname"/>
      <xsl:with-param name="dispname" select="."/>
    </xsl:call-template>
  </xsl:template>

  <xsl:template match="jcom">
    <xsl:call-template name="object_link">
      <xsl:with-param name="name" select="."/>
      <xsl:with-param name="objname" select="@objname"/>
      <xsl:with-param name="dispname" select="."/>
    </xsl:call-template>
  </xsl:template>

  <xsl:template match="text()">
    <xsl:variable name="trim" select="normalize-space(.)"/>
    <xsl:variable name="first" select="substring($trim,1,1)"/>
    <xsl:variable name="length" select="string-length($trim)"/>
    <xsl:variable name="last" select="substring($trim,$length,1)"/>

    <xsl:if test="$first = translate($first, '.,?!:;-)&quot; &#9;&#13;&#10;', '#')">
      <xsl:text> </xsl:text>
    </xsl:if>
    <xsl:value-of select="$trim"/>
    <xsl:if test="$last = translate($last, '(&quot;', '#')">
      <xsl:text> </xsl:text>
    </xsl:if>
  </xsl:template>

  <xsl:template match="apiinletlist">
    <div id="inlet_section">
      <h2>Inlets</h2>
      <table>
        <tr>
          <th width="20%"><xsl:text>Name</xsl:text></th>
          <th><xsl:text>Description</xsl:text></th>
        </tr>
        <xsl:for-each select="inlet">
          <tr>
            <xsl:choose>
              <xsl:when test="position() mod 2 = 0">
                <xsl:attribute name="class">row_even</xsl:attribute>
              </xsl:when>
              <xsl:otherwise>
                <xsl:attribute name="class">row_odd</xsl:attribute>
              </xsl:otherwise>
            </xsl:choose>
            <td>
              <xsl:value-of select="@name"/>
            </td>
            <td>
              <xsl:apply-templates/>
            </td>
          </tr>
        </xsl:for-each>
      </table>
    </div>
<!-- id="inlet_section" -->
  </xsl:template>
<!-- 
			Outlets
			-->
  <xsl:template match="apioutletlist">
    <div id="outlet_section">
      <h2>Outlets</h2>
      <table>
        <tr>
          <th width="20%"><xsl:text>Name</xsl:text></th>
          <th><xsl:text>Description</xsl:text></th>
        </tr>
        <xsl:for-each select="outlet">
          <tr>
            <xsl:choose>
              <xsl:when test="position() mod 2 = 0">
                <xsl:attribute name="class">row_even</xsl:attribute>
              </xsl:when>
              <xsl:otherwise>
                <xsl:attribute name="class">row_odd</xsl:attribute>
              </xsl:otherwise>
            </xsl:choose>
            <td>
              <xsl:value-of select="@name"/>
            </td>
            <td>
              <xsl:apply-templates/>
            </td>
          </tr>
        </xsl:for-each>
      </table>
    </div>
<!-- id="outlet_section" -->
  </xsl:template>
</xsl:stylesheet>
