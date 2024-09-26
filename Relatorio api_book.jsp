<%@ taglib uri="/WEB-INF/lib/reports_tld.jar" prefix="rw" %> 
<%@ page language="java" import="java.io.*" errorPage="/rwerror.jsp" session="false" %>
<%@ page contentType="text/html;charset=ISO-8859-1" %>
<!--
<rw:report id="report"> 
<rw:objects id="objects">
<?xml version="1.0" encoding="ISO-8859-1" ?>
<report name="Relatorio api_book" DTDVersion="9.0.2.0.10">
  <xmlSettings xmlTag="RELATORIO API_BOOK" xmlPrologType="text">
  <![CDATA[<?xml version="1.0" encoding="&Encoding"?>]]>
  </xmlSettings>
  <reportHtmlEscapes>
    <beforePageHtmlEscape>
    <![CDATA[#NULL#]]>
    </beforePageHtmlEscape>
  </reportHtmlEscapes>
  <data>
    <dataSource name="Q_1">
      <select>
      <![CDATA[select * from book;]]>
      </select>
      <displayInfo x="1.65002" y="1.00000" width="0.69995" height="0.19995"/>
      <group name="G_2">
        <displayInfo x="1.45007" y="1.94995" width="1.09998" height="0.43066"
        />
        <dataItem name="ANO" oracleDatatype="number" columnOrder="12"
         width="22" defaultWidth="90000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Ano">
          <dataDescriptor expression="book.ANO" descriptiveExpression="ANO"
           order="2" oracleDatatype="number" width="22" precision="38"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
      </group>
      <group name="G_1">
        <displayInfo x="1.28418" y="3.13062" width="1.43176" height="1.45605"
        />
        <dataItem name="ID_LIVRO" oracleDatatype="number" columnOrder="11"
         width="22" defaultWidth="90000" defaultHeight="10000"
         columnFlags="33" defaultLabel="ID">
          <dataDescriptor expression="book.ID_LIVRO"
           descriptiveExpression="ID_LIVRO" order="1" oracleDatatype="number"
           width="22" precision="38"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="TITULO" datatype="vchar2" columnOrder="13" width="255"
         defaultWidth="100000" defaultHeight="10000" columnFlags="33"
         defaultLabel="Título">
          <dataDescriptor expression="book.TITULO"
           descriptiveExpression="TITULO" order="3" width="255"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="IDENTIFICADOR" datatype="vchar2" columnOrder="14"
         width="100" defaultWidth="100000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Identificador">
          <dataDescriptor expression="book.IDENTIFICADOR"
           descriptiveExpression="IDENTIFICADOR" order="4" width="100"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="EDITORA" datatype="vchar2" columnOrder="15"
         width="255" defaultWidth="100000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Editora">
          <dataDescriptor expression="book.EDITORA"
           descriptiveExpression="EDITORA" order="5" width="255"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="ISBN" datatype="vchar2" columnOrder="16" width="20"
         defaultWidth="100000" defaultHeight="10000" columnFlags="33"
         defaultLabel="ISBN">
          <dataDescriptor expression="book.ISBN" descriptiveExpression="ISBN"
           order="6" width="20"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="PAGINAS" oracleDatatype="number" columnOrder="17"
         width="22" defaultWidth="90000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Qnt. Páginas">
          <dataDescriptor expression="book.PAGINAS"
           descriptiveExpression="PAGINAS" order="7" oracleDatatype="number"
           width="22" precision="38"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="CRIADOEM" datatype="date" oracleDatatype="date"
         columnOrder="18" width="9" defaultWidth="100000"
         defaultHeight="10000" columnFlags="33" defaultLabel="Criado em">
          <dataDescriptor expression="book.CRIADOEM"
           descriptiveExpression="CRIADOEM" order="8" oracleDatatype="date"
           width="9"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
      </group>
    </dataSource>
  </data>
  <layout>
  <section name="main">
    <body>
      <frame name="M_G_2_GRPFR">
        <geometryInfo x="0.00000" y="0.00000" width="7.43750" height="0.56250"
        />
        <generalLayout verticalElasticity="variable"/>
        <repeatingFrame name="R_G_2" source="G_2" printDirection="down"
         minWidowRecords="1" columnMode="no" vertSpaceBetweenFrames="0.1250">
          <geometryInfo x="0.00000" y="0.00000" width="7.43750"
           height="0.56250"/>
          <generalLayout verticalElasticity="variable"/>
          <field name="F_ANO" source="ANO" minWidowLines="1" spacing="0"
           alignment="center">
            <font face="Courier New" size="10" bold="yes"/>
            <geometryInfo x="0.31250" y="0.00000" width="0.81250"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
            <visualSettings fillPattern="transparent"
             fillBackgroundColor="gray24" linePattern="solid"
             hideLeftBorder="yes" hideRightBorder="yes"/>
          </field>
          <frame name="M_G_1_GRPFR">
            <geometryInfo x="0.00000" y="0.18750" width="7.43750"
             height="0.37500"/>
            <generalLayout verticalElasticity="variable"/>
            <repeatingFrame name="R_G_1" source="G_1" printDirection="down"
             minWidowRecords="1" columnMode="no">
              <geometryInfo x="0.00000" y="0.37500" width="7.43750"
               height="0.18750"/>
              <generalLayout verticalElasticity="expand"/>
              <field name="F_ID_LIVRO" source="ID_LIVRO" minWidowLines="1"
               spacing="0" alignment="center">
                <font face="Courier New" size="8"/>
                <geometryInfo x="0.00000" y="0.37500" width="0.50000"
                 height="0.18750"/>
                <generalLayout horizontalElasticity="expand"/>
                <visualSettings fillPattern="transparent"
                 fillBackgroundColor="gray8"/>
              </field>
              <field name="F_TITULO" source="TITULO" minWidowLines="1"
               spacing="0" alignment="center">
                <font face="Courier New" size="8"/>
                <geometryInfo x="0.50000" y="0.37500" width="1.18750"
                 height="0.18750"/>
                <generalLayout horizontalElasticity="expand"/>
                <visualSettings fillPattern="transparent"
                 fillBackgroundColor="gray8"/>
              </field>
              <field name="F_IDENTIFICADOR" source="IDENTIFICADOR"
               minWidowLines="1" spacing="0" alignment="center">
                <font face="Courier New" size="8"/>
                <geometryInfo x="1.68750" y="0.37500" width="1.06250"
                 height="0.18750"/>
                <generalLayout horizontalElasticity="expand"/>
                <visualSettings fillPattern="transparent"
                 fillBackgroundColor="gray8"/>
              </field>
              <field name="F_EDITORA" source="EDITORA" minWidowLines="1"
               spacing="0" alignment="center">
                <font face="Courier New" size="8"/>
                <geometryInfo x="2.75000" y="0.37500" width="0.93750"
                 height="0.18750"/>
                <generalLayout horizontalElasticity="expand"/>
                <visualSettings fillPattern="transparent"
                 fillBackgroundColor="gray8"/>
              </field>
              <field name="F_ISBN" source="ISBN" minWidowLines="1" spacing="0"
               alignment="center">
                <font face="Courier New" size="8"/>
                <geometryInfo x="3.68750" y="0.37500" width="1.56250"
                 height="0.18750"/>
                <generalLayout horizontalElasticity="expand"/>
                <visualSettings fillPattern="transparent"
                 fillBackgroundColor="gray8"/>
              </field>
              <field name="F_PAGINAS" source="PAGINAS" minWidowLines="1"
               spacing="0" alignment="center">
                <font face="Courier New" size="8"/>
                <geometryInfo x="5.25000" y="0.37500" width="1.00000"
                 height="0.18750"/>
                <generalLayout horizontalElasticity="expand"/>
                <visualSettings fillPattern="transparent"
                 fillBackgroundColor="gray8"/>
              </field>
              <field name="F_CRIADOEM" source="CRIADOEM" minWidowLines="1"
               formatMask="DD/MM/RR" spacing="0" alignment="center">
                <font face="Courier New" size="8"/>
                <geometryInfo x="6.25000" y="0.37500" width="1.18750"
                 height="0.18750"/>
                <generalLayout horizontalElasticity="expand"/>
                <visualSettings fillPattern="transparent"
                 fillBackgroundColor="gray8"/>
              </field>
            </repeatingFrame>
            <frame name="M_G_1_HDR">
              <geometryInfo x="0.00000" y="0.18750" width="7.43750"
               height="0.18750"/>
              <advancedLayout printObjectOnPage="allPage"
               basePrintingOn="enclosingObject"/>
              <text name="B_ID_LIVRO" minWidowLines="1">
                <textSettings justify="center" spacing="0"/>
                <geometryInfo x="0.00000" y="0.18750" width="0.50000"
                 height="0.18750"/>
                <visualSettings fillPattern="transparent"
                 fillBackgroundColor="gray24" linePattern="solid"
                 hideLeftBorder="yes" hideRightBorder="yes"/>
                <textSegment>
                  <font face="Courier New" size="10" bold="yes"/>
                  <string>
                  <![CDATA[ID]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_TITULO" minWidowLines="1">
                <textSettings justify="center" spacing="0"/>
                <geometryInfo x="0.50000" y="0.18750" width="1.18750"
                 height="0.18750"/>
                <visualSettings fillPattern="transparent"
                 fillBackgroundColor="gray24" linePattern="solid"
                 hideLeftBorder="yes" hideRightBorder="yes"/>
                <textSegment>
                  <font face="Courier New" size="10" bold="yes"/>
                  <string>
                  <![CDATA[Título]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_IDENTIFICADOR" minWidowLines="1">
                <textSettings justify="center" spacing="0"/>
                <geometryInfo x="1.68750" y="0.18750" width="1.06250"
                 height="0.18750"/>
                <visualSettings fillPattern="transparent"
                 fillBackgroundColor="gray24" linePattern="solid"
                 hideLeftBorder="yes" hideRightBorder="yes"/>
                <textSegment>
                  <font face="Courier New" size="10" bold="yes"/>
                  <string>
                  <![CDATA[Ident.]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_EDITORA" minWidowLines="1">
                <textSettings justify="center" spacing="0"/>
                <geometryInfo x="2.75000" y="0.18750" width="0.93750"
                 height="0.18750"/>
                <visualSettings fillPattern="transparent"
                 fillBackgroundColor="gray24" linePattern="solid"
                 hideLeftBorder="yes" hideRightBorder="yes"/>
                <textSegment>
                  <font face="Courier New" size="10" bold="yes"/>
                  <string>
                  <![CDATA[Editora]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_ISBN" minWidowLines="1">
                <textSettings justify="center" spacing="0"/>
                <geometryInfo x="3.68750" y="0.18750" width="1.56250"
                 height="0.18750"/>
                <visualSettings fillPattern="transparent"
                 fillBackgroundColor="gray24" linePattern="solid"
                 hideLeftBorder="yes" hideRightBorder="yes"/>
                <textSegment>
                  <font face="Courier New" size="10" bold="yes"/>
                  <string>
                  <![CDATA[ISBN]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_PAGINAS" minWidowLines="1">
                <textSettings justify="center" spacing="0"/>
                <geometryInfo x="5.25000" y="0.18750" width="1.00000"
                 height="0.18750"/>
                <visualSettings fillPattern="transparent"
                 fillBackgroundColor="gray24" linePattern="solid"
                 hideLeftBorder="yes" hideRightBorder="yes"/>
                <textSegment>
                  <font face="Courier New" size="10" bold="yes"/>
                  <string>
                  <![CDATA[Páginas]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_CRIADOEM" minWidowLines="1">
                <textSettings justify="center" spacing="0"/>
                <geometryInfo x="6.25000" y="0.18750" width="1.18750"
                 height="0.18750"/>
                <visualSettings fillPattern="transparent"
                 fillBackgroundColor="gray24" linePattern="solid"
                 hideLeftBorder="yes" hideRightBorder="yes"/>
                <textSegment>
                  <font face="Courier New" size="10" bold="yes"/>
                  <string>
                  <![CDATA[Criado em]]>
                  </string>
                </textSegment>
              </text>
            </frame>
          </frame>
          <text name="B_ANO" minWidowLines="1">
            <textSettings justify="center" spacing="0"/>
            <geometryInfo x="0.00000" y="0.00000" width="0.31250"
             height="0.18750"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
            <visualSettings fillPattern="transparent"
             fillBackgroundColor="gray24" linePattern="solid"
             hideLeftBorder="yes" hideRightBorder="yes"/>
            <textSegment>
              <font face="Courier New" size="10" bold="yes"/>
              <string>
              <![CDATA[Ano]]>
              </string>
            </textSegment>
          </text>
        </repeatingFrame>
      </frame>
    </body>
    <margin>
      <text name="B_OR$BODY_SECTION" minWidowLines="1">
        <textSettings justify="center" spacing="0"/>
        <geometryInfo x="3.87500" y="0.25000" width="0.81250" height="0.18750"
        />
        <textSegment>
          <font face="Courier New" size="12"/>
          <string>
          <![CDATA[LIVROS]]>
          </string>
        </textSegment>
      </text>
      <text name="B_1" minWidowLines="1">
        <textSettings justify="center" spacing="0"/>
        <geometryInfo x="3.30212" y="0.54163" width="2.01160" height="0.39587"
        />
        <advancedLayout printObjectOnPage="allPage"
         basePrintingOn="anchoringObject"/>
        <visualSettings lineBackgroundColor="black"/>
        <textSegment>
          <font face="Courier New" size="10"/>
          <string>
          <![CDATA[RELATÓRIO DE LIVROS PUBLICADOS POR ANO]]>
          </string>
        </textSegment>
      </text>
      <field name="F_DATE1" source="CurrentDate" minWidowLines="1"
       formatMask="DD-MON-RR HH24:MI:SS" spacing="0" alignment="center">
        <font face="Courier New" size="8" bold="yes"/>
        <geometryInfo x="6.41663" y="1.00000" width="1.66663" height="0.16663"
        />
        <generalLayout horizontalElasticity="variable"/>
      </field>
    </margin>
  </section>
  </layout>
  <reportPrivate defaultReportType="masterDetail" versionFlags2="0"
   templateName="" sectionTitle="Livros"/>
  <reportWebSettings>
  <![CDATA[#NULL#]]>
  </reportWebSettings>
</report>
</rw:objects>
-->

<html>

<head>
<meta name="GENERATOR" content="Oracle 11gR1 Reports Developer"/>
<title> Your Title </title>



</head>


<body>

<!-- Data Area Generated by Reports Developer -->
<rw:dataArea id="MG2GRPFR49">
<rw:foreach id="RG2491" src="G_2">
<!-- Start GetGroupHeader/n --> <table>
 <caption> Livros <br>Ano <rw:field id="F_ANO" src="ANO" breakLevel="RG2491" breakValue="&nbsp;"> F_ANO </rw:field><br>
 </caption>
<!-- End GetGroupHeader/n -->   <tr>
    <td valign="top">
    <table summary="Livros">
     <!-- Header -->
     <thead>
      <tr>
       <th <rw:id id="HBIDLIVRO49" asArray="no"/>> ID </th>
       <th <rw:id id="HBTITULO49" asArray="no"/>> Título </th>
       <th <rw:id id="HBIDENTIFICADOR49" asArray="no"/>> Identificador </th>
       <th <rw:id id="HBEDITORA49" asArray="no"/>> Editora </th>
       <th <rw:id id="HBISBN49" asArray="no"/>> ISBN </th>
       <th <rw:id id="HBPAGINAS49" asArray="no"/>> Qnt. Páginas </th>
       <th <rw:id id="HBCRIADOEM49" asArray="no"/>> Criado em </th>
      </tr>
     </thead>
     <!-- Body -->
     <tbody>
      <rw:foreach id="RG1491" src="G_1">
       <tr>
        <td <rw:headers id="HFIDLIVRO49" src="HBIDLIVRO49"/>><rw:field id="FIDLIVRO49" src="ID_LIVRO" nullValue="&nbsp;"> F_ID_LIVRO </rw:field></td>
        <td <rw:headers id="HFTITULO49" src="HBTITULO49"/>><rw:field id="FTITULO49" src="TITULO" nullValue="&nbsp;"> F_TITULO </rw:field></td>
        <td <rw:headers id="HFIDENTIFICADOR49" src="HBIDENTIFICADOR49"/>><rw:field id="FIDENTIFICADOR49" src="IDENTIFICADOR" nullValue="&nbsp;"> F_IDENTIFICADOR </rw:field></td>
        <td <rw:headers id="HFEDITORA49" src="HBEDITORA49"/>><rw:field id="FEDITORA49" src="EDITORA" nullValue="&nbsp;"> F_EDITORA </rw:field></td>
        <td <rw:headers id="HFISBN49" src="HBISBN49"/>><rw:field id="FISBN49" src="ISBN" nullValue="&nbsp;"> F_ISBN </rw:field></td>
        <td <rw:headers id="HFPAGINAS49" src="HBPAGINAS49"/>><rw:field id="FPAGINAS49" src="PAGINAS" nullValue="&nbsp;"> F_PAGINAS </rw:field></td>
        <td <rw:headers id="HFCRIADOEM49" src="HBCRIADOEM49"/>><rw:field id="FCRIADOEM49" src="CRIADOEM" nullValue="&nbsp;"> F_CRIADOEM </rw:field></td>
       </tr>
      </rw:foreach>
     </tbody>
     <tr>
     </tr>
    </table>
   </td>
  </tr>
 </table>
</rw:foreach>
<table summary="Livros">
</table>
</rw:dataArea> <!-- id="MG2GRPFR49" -->
<!-- End of Data Area Generated by Reports Developer -->




</body>
</html>

<!--
</rw:report> 
-->
