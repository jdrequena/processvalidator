<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:add="http://xmlns.tigo.com/AdditionalSchema/V1" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/DB_Select_PROCESS_RULES_INFO" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:rul="http://tigo.com/rules/v1/schema" xmlns:ent="http://tigo.com/entities/v1/schema" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl add ns0 rul ent xsd bpws xp20 mhdr bpel oraext dvm hwf med ids bpm xdk xref ora socket ldap">
   <xsl:param name="rulesV2"/>
   <xsl:template match="/">
      <rul:rules>
         <xsl:for-each select="$rulesV2/rul:rules/rule">
            <xsl:variable name="ruleCount" select="position()"/>
            <rule>
               <id>
                  <xsl:value-of select="id"/>
               </id>
               <name>
                  <xsl:value-of select="name"/>
               </name>
               <add:additionals>
                  <add:additional>
                     <add:name>
                        <xsl:text disable-output-escaping="no"/>
                     </add:name>
                     <add:value>
                        <xsl:text disable-output-escaping="no"/>
                     </add:value>
                  </add:additional>
                  <add:additional>
                     <add:name>
                        <xsl:text disable-output-escaping="no"/>
                     </add:name>
                     <add:value>
                        <xsl:text disable-output-escaping="no"/>
                     </add:value>
                  </add:additional>
                  <add:additional>
                     <add:name>
                        <xsl:text disable-output-escaping="no"/>
                     </add:name>
                     <add:value>
                        <xsl:text disable-output-escaping="no"/>
                     </add:value>
                  </add:additional>
                  <add:additional>
                     <add:name>
                        <xsl:text disable-output-escaping="no"/>
                     </add:name>
                     <add:value>
                        <xsl:text disable-output-escaping="no"/>
                     </add:value>
                  </add:additional>
                  <add:additional>
                     <add:name>
                        <xsl:text disable-output-escaping="no"/>
                     </add:name>
                     <add:value>
                        <xsl:text disable-output-escaping="no"/>
                     </add:value>
                  </add:additional>
                  <add:additional>
                     <add:name>
                        <xsl:text disable-output-escaping="no"/>
                     </add:name>
                     <add:value>
                        <xsl:text disable-output-escaping="no"/>
                     </add:value>
                  </add:additional>
                  <add:additional>
                     <add:name>
                        <xsl:text disable-output-escaping="no"/>
                     </add:name>
                     <add:value>
                        <xsl:text disable-output-escaping="no"/>
                     </add:value>
                  </add:additional>
               </add:additionals>
               <entities>
                  <xsl:for-each select="/ns0:DB_Select_PROCESS_RULES_INFOOutputCollection/ns0:DB_Select_PROCESS_RULES_INFOOutput[not((ns0:DATA_ID = preceding::ns0:DATA_ID)) and (ns0:RULE_ID = $rulesV2/rul:rules/rule[$ruleCount]/id)]">
                     <entity>
                        <code>
                           <xsl:value-of select="ns0:DATA_ID"/>
                        </code>
                     </entity>
                  </xsl:for-each>
               </entities>
            </rule>
         </xsl:for-each>
      </rul:rules>
   </xsl:template>
</xsl:stylesheet>
