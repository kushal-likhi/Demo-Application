<%--
  Created by IntelliJ IDEA.
  User: kushal
  Date: 2/8/12
  Time: 11:12 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <meta content="main" name="layout">
        <title></title>
    </head>

    <body>
        <h1 style="padding-left: 20px">HTML5 Offline Application Demos</h1>
        <g:each in="${actions}" var="action" status="i">
            <div style="width: 98%;border: 1px solid #ccc;margin: 5px;padding: 3px;">
                <g:link style="text-decoration: none"
                        action="${action}">${i + 1}) ${action.replaceAll(/(^(.))|([A-Z])/, {" " + it[0].toString().toUpperCase()}).trim()}</g:link>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <g:link style="float: right;" target="_blank" controller="demo" action="${action}Demo"><button>See Working Demo</button></g:link>
            </div>
        </g:each>
    </body>
</html>