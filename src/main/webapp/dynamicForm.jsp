<%@ page import="org.metaworks.dwr.MetaworksRemoteService" %>
<%@ page import="org.metaworks.WebObjectType" %>
<%@ page import="org.metaworks.WebFieldDescriptor" %>
<%@ page import="org.metaworks.annotation.ServiceMethod" %>
<%@ page import="org.metaworks.ServiceMethodContext" %><%--
  Created by IntelliJ IDEA.
  User: uengine
  Date: 2017. 4. 21.
  Time: 오전 11:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="import" href="bower_components/polymer/polymer.html">
<link rel="import" href="bower_components/paper-input/paper-input.html">
<link rel="import" href="bower_components/paper-button/paper-button.html">
<link rel="import" href="bower_components/iron-a11y-keys/iron-a11y-keys.html">
<link rel="import" href="bower_components/iron-form/iron-form.html">

<%
    String className = request.getParameter("className");
    boolean extendedFieldsOnly = "true".equals(request.getParameter("extendedFieldsOnly"));
    String moduleName = className.replace(".","-");

    WebObjectType webObjectType = MetaworksRemoteService.getInstance().getMetaworksType(className);
%>

<dom-module id='<%=moduleName%>'>
    <template>
        <style>
            :host {
                display: block;
            }
        </style>

        <%
            for(WebFieldDescriptor fd : webObjectType.getFieldDescriptors()){
                if(extendedFieldsOnly && fd.getAttribute("extended")==null) continue;

                if(fd.getClassName().endsWith("Date")){
                    %>
            <vaadin-date-picker label="<%=fd.getDisplayName()%>" value="{{<%=fd.getName()%>}}" id="<%=fd.getName()%>" id="<%=fd.getName()%>"></vaadin-date-picker>

        <%
                }else{
        %>
            <paper-input label="<%=fd.getDisplayName()%>" id="<%=fd.getName()%>" value={{<%=fd.getName()%>}}></paper-input>
        <%
                }
            }
        %>

        <%
            for(ServiceMethodContext sm : webObjectType.getServiceMethodContexts()){
                if(extendedFieldsOnly && sm.getAttribute("extended")==null) continue;
        %>
             <paper-button id="<%=sm.getMethodName()%>-button" on-tap="_<%=sm.getMethodName()%>" raised><%=sm.getMethodName()%></paper-button>

        <%
            }
        %>

    </template>

    <script>
        mw3.Polymer({

            is: '<%=moduleName%>',
            java: '<%=className%>'

        });
    </script>
</dom-module>
