<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:ns3="http://xmlns.tigo.com/ProductSchema/V1" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xtcpg="http://xmlns.tigo.com/ProcessValidator/GetValidationRequest" xmlns:ns4="http://xmlns.tigo.com/RequestHeader/V3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xtcpv1="http://xmlns.tigo.com/ProcessValidator/ValidatorFaultResponse" xmlns:tns="http://xmlns.tigo.com/ProcessValidator/Validate" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns7="http://xmlns.tigo.com/ProcessValidator/StepSchema/V1" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:ns9="http://xmlns.tigo.com/ProcessValidator/BillingAccountSchema/V1" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:xpc="http:/xmlns.tigo.com/ProcessValidator/ConfirmValidationRequest" xmlns:ns11="http://xmlns.tigo.com/ClientSchema/V1" xmlns:ns0="http://xmlns.tigo.com/AdditionalSchema/V1" xmlns:xtccv="http://xmlns.tigo.com/ProcessValidator/ValidatorGeneralResponse" xmlns:ns1="http://xmlns.tigo.com/ProcessValidator/ServiceAccountSchema/V1" xmlns:ns2="http://xmlns.tigo.com/ParameterType/V2" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns5="http://xmlns.tigo.com/ResponseHeader/V3" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:ns6="http://xmlns.tigo.com/ProcessValidator/StatusSchema/V1" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:ent="http://tigo.com/entities/v1/schema" xmlns:rul="http://tigo.com/rules/v1/schema" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns8="http://xmlns.tigo.com/ProcessValidator/RoleSchema/V1" xmlns:xtcpx="http://xmlns.tigo.com/ProcessValidator/ValidateConditionalRequest" xmlns:ns10="http:/xmlns.tigo.com/ProcessValidator/ProcessDetailsSchema/V1" xmlns:ns12="http://xmlns.tigo.com/ProcessValidator/RuleSchema/V1" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns3 xtcpg ns4 xtcpv1 tns ns7 soap12 soap ns9 wsdl mime xpc ns11 ns0 xtccv ns1 ns2 ns5 ns6 ent rul xsd ns8 xtcpx ns10 ns12 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:param name="rulesV2"/>
   <xsl:template match="/">
      <xtccv:ValidatorGeneralResponse>
         <ns5:ResponseHeader>
            <ns5:GeneralResponse>
               <xsl:if test="/xtccv:ValidatorGeneralResponse/ns5:ResponseHeader/ns5:GeneralResponse/ns5:correlationID">
                  <ns5:correlationID>
                     <xsl:value-of select="/xtccv:ValidatorGeneralResponse/ns5:ResponseHeader/ns5:GeneralResponse/ns5:correlationID"/>
                  </ns5:correlationID>
               </xsl:if>
               <xsl:if test="/xtccv:ValidatorGeneralResponse/ns5:ResponseHeader/ns5:GeneralResponse/ns5:status">
                  <ns5:status>
                     <xsl:value-of select="/xtccv:ValidatorGeneralResponse/ns5:ResponseHeader/ns5:GeneralResponse/ns5:status"/>
                  </ns5:status>
               </xsl:if>
               <xsl:if test="/xtccv:ValidatorGeneralResponse/ns5:ResponseHeader/ns5:GeneralResponse/ns5:code">
                  <ns5:code>
                     <xsl:value-of select="/xtccv:ValidatorGeneralResponse/ns5:ResponseHeader/ns5:GeneralResponse/ns5:code"/>
                  </ns5:code>
               </xsl:if>
               <xsl:if test="/xtccv:ValidatorGeneralResponse/ns5:ResponseHeader/ns5:GeneralResponse/ns5:codeType">
                  <ns5:codeType>
                     <xsl:value-of select="/xtccv:ValidatorGeneralResponse/ns5:ResponseHeader/ns5:GeneralResponse/ns5:codeType"/>
                  </ns5:codeType>
               </xsl:if>
               <xsl:if test="/xtccv:ValidatorGeneralResponse/ns5:ResponseHeader/ns5:GeneralResponse/ns5:description">
                  <ns5:description>
                     <xsl:value-of select="/xtccv:ValidatorGeneralResponse/ns5:ResponseHeader/ns5:GeneralResponse/ns5:description"/>
                  </ns5:description>
               </xsl:if>
            </ns5:GeneralResponse>
         </ns5:ResponseHeader>
         <xtccv:responseBody>
            <xtccv:token>
               <xsl:value-of select="/xtccv:ValidatorGeneralResponse/xtccv:responseBody/xtccv:token"/>
            </xtccv:token>
            <xtccv:processRules>
               <xsl:for-each select="$rulesV2/rul:rules/rule">
                  <xsl:variable name="ruleCounter" select="position()"/>
                  <ns12:rule>
                     <ns12:ruleID>
                        <xsl:value-of select="/xtccv:ValidatorGeneralResponse/xtccv:responseBody/xtccv:processRules/ns12:rule[$ruleCounter]/ns12:ruleID"/>
                     </ns12:ruleID>
                     <ns12:description>
                        <xsl:value-of select="/xtccv:ValidatorGeneralResponse/xtccv:responseBody/xtccv:processRules/ns12:rule[$ruleCounter]/ns12:description"/>
                     </ns12:description>
                     <ns6:status>
                        <ns6:status>
                           <xsl:value-of select="/xtccv:ValidatorGeneralResponse/xtccv:responseBody/xtccv:processRules/ns12:rule[$ruleCounter]/ns6:status/ns6:status"/>
                        </ns6:status>
                        <ns6:statusDetails>
                           <xsl:value-of select="/xtccv:ValidatorGeneralResponse/xtccv:responseBody/xtccv:processRules/ns12:rule[$ruleCounter]/ns6:status/ns6:statusDetails"/>
                        </ns6:statusDetails>
                     </ns6:status>
                     <xsl:if test="/xtccv:ValidatorGeneralResponse/xtccv:responseBody/xtccv:processRules/ns12:rule[$ruleCounter]/ns12:responsible">
                        <ns12:responsible>
                           <xsl:for-each select="/xtccv:ValidatorGeneralResponse/xtccv:responseBody/xtccv:processRules/ns12:rule[$ruleCounter]/ns12:responsible/ns8:role">
                              <ns8:role>
                                 <ns8:roleID>
                                    <xsl:value-of select="ns8:roleID"/>
                                 </ns8:roleID>
                                 <ns8:typeID>
                                    <xsl:value-of select="ns8:typeID"/>
                                 </ns8:typeID>
                                 <xsl:if test="ns8:name">
                                    <ns8:name>
                                       <xsl:value-of select="ns8:name"/>
                                    </ns8:name>
                                 </xsl:if>
                                 <xsl:if test="ns8:contactEmail">
                                    <ns8:contactEmail>
                                       <xsl:value-of select="ns8:contactEmail"/>
                                    </ns8:contactEmail>
                                 </xsl:if>
                                 <xsl:if test="ns8:contactPhone">
                                    <ns8:contactPhone>
                                       <xsl:value-of select="ns8:contactPhone"/>
                                    </ns8:contactPhone>
                                 </xsl:if>
                                 <xsl:if test="ns8:user">
                                    <ns8:user>
                                       <xsl:value-of select="ns8:user"/>
                                    </ns8:user>
                                 </xsl:if>
                              </ns8:role>
                           </xsl:for-each>
                        </ns12:responsible>
                     </xsl:if>
                     <ns12:target>
                        <xsl:value-of select="/xtccv:ValidatorGeneralResponse/xtccv:responseBody/xtccv:processRules/ns12:rule[$ruleCounter]/ns12:target"/>
                     </ns12:target>
                     <xsl:if test="id = /xtccv:ValidatorGeneralResponse/xtccv:responseBody/xtccv:processRules/ns12:rule[$ruleCounter]/ns12:ruleID">
                        <ns0:additionals>
                           <xsl:for-each select="ns0:additionals/ns0:additional">
                              <ns0:additional>
                                 <ns0:name>
                                    <xsl:value-of select="ns0:name"/>
                                 </ns0:name>
                                 <ns0:value>
                                    <xsl:value-of select="ns0:value"/>
                                 </ns0:value>
                              </ns0:additional>
                           </xsl:for-each>
                        </ns0:additionals>
                     </xsl:if>
                  </ns12:rule>
               </xsl:for-each>
            </xtccv:processRules>
            <xsl:if test="/xtccv:ValidatorGeneralResponse/xtccv:responseBody/xtccv:result">
               <xtccv:result>
                  <ns6:status>
                     <ns6:status>
                        <xsl:value-of select="/xtccv:ValidatorGeneralResponse/xtccv:responseBody/xtccv:result/ns6:status/ns6:status"/>
                     </ns6:status>
                     <ns6:statusDetails>
                        <xsl:value-of select="/xtccv:ValidatorGeneralResponse/xtccv:responseBody/xtccv:result/ns6:status/ns6:statusDetails"/>
                     </ns6:statusDetails>
                  </ns6:status>
                  <xsl:if test="/xtccv:ValidatorGeneralResponse/xtccv:responseBody/xtccv:result/xtccv:actions">
                     <xtccv:actions>
                        <xsl:for-each select="/xtccv:ValidatorGeneralResponse/xtccv:responseBody/xtccv:result/xtccv:actions/ns7:step">
                           <ns7:step>
                              <ns7:name>
                                 <xsl:value-of select="ns7:name"/>
                              </ns7:name>
                              <ns7:value>
                                 <xsl:value-of select="ns7:value"/>
                              </ns7:value>
                           </ns7:step>
                        </xsl:for-each>
                     </xtccv:actions>
                  </xsl:if>
                  <xtccv:expirationDate>
                     <xsl:value-of select="/xtccv:ValidatorGeneralResponse/xtccv:responseBody/xtccv:result/xtccv:expirationDate"/>
                  </xtccv:expirationDate>
               </xtccv:result>
            </xsl:if>
            <xsl:if test="/xtccv:ValidatorGeneralResponse/xtccv:responseBody/ns10:processDetails">
               <ns10:processDetails>
                  <ns10:cost>
                     <xsl:value-of select="/xtccv:ValidatorGeneralResponse/xtccv:responseBody/ns10:processDetails/ns10:cost"/>
                  </ns10:cost>
                  <ns10:description>
                     <xsl:value-of select="/xtccv:ValidatorGeneralResponse/xtccv:responseBody/ns10:processDetails/ns10:description"/>
                  </ns10:description>
                  <xsl:if test="/xtccv:ValidatorGeneralResponse/xtccv:responseBody/ns10:processDetails/ns10:id">
                     <ns10:id>
                        <xsl:value-of select="/xtccv:ValidatorGeneralResponse/xtccv:responseBody/ns10:processDetails/ns10:id"/>
                     </ns10:id>
                  </xsl:if>
                  <xsl:if test="/xtccv:ValidatorGeneralResponse/xtccv:responseBody/ns10:processDetails/ns10:conditions">
                     <ns10:conditions>
                        <xsl:for-each select="/xtccv:ValidatorGeneralResponse/xtccv:responseBody/ns10:processDetails/ns10:conditions/ns10:condition">
                           <ns10:condition>
                              <ns10:name>
                                 <xsl:value-of select="ns10:name"/>
                              </ns10:name>
                              <ns10:value>
                                 <xsl:value-of select="ns10:value"/>
                              </ns10:value>
                           </ns10:condition>
                        </xsl:for-each>
                     </ns10:conditions>
                  </xsl:if>
                  <ns0:additionals>
                     <xsl:for-each select="/xtccv:ValidatorGeneralResponse/xtccv:responseBody/ns10:processDetails/ns0:additionals/ns0:additional">
                        <ns0:additional>
                           <ns0:name>
                              <xsl:value-of select="ns0:name"/>
                           </ns0:name>
                           <ns0:value>
                              <xsl:value-of select="ns0:value"/>
                           </ns0:value>
                        </ns0:additional>
                     </xsl:for-each>
                  </ns0:additionals>
               </ns10:processDetails>
            </xsl:if>
         </xtccv:responseBody>
      </xtccv:ValidatorGeneralResponse>
   </xsl:template>
</xsl:stylesheet>
