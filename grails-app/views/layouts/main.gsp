<!doctype html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title><g:layoutTitle default="Grails"/></title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <jq:resources/>
        <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
        <link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
        <link rel="apple-touch-icon" sizes="114x114"
              href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
        <script type="text/javascript" src="${resource(dir: 'js', file: 'jquery.snippet.js')}"></script>
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'jquery.snippet.css')}" type="text/css">
        <g:layoutHead/>
        <script type="text/javascript">
            $(document).ready(function () {

                $("pre.htmlCode").snippet("html", {style:"darkness"});


                $("pre.styles").snippet("css", {style:"darkness"});


                $("pre.js").snippet("javascript", {style:"darkness"});


            });

        </script>
    </head>

    <body>
        <div id="grailsLogo" role="banner"><a href="http://grails.org"></a></div>
        <g:if test="${params.action != 'index'}">
            <div class="buttons" style="padding-left: 10px">
                <g:link action="index"><div style="cursor: pointer">Back</div></g:link>
            </div>
        </g:if>
        <h1 style="padding-left: 10px">${params.action.replaceAll(/(^(.))|([A-Z])/, {" " + it[0].toString().toUpperCase()}).trim()}</h1>
        <hr>

        <div style="padding: 20px"><g:layoutBody/></div>

        <div class="footer" role="contentinfo"></div>

        <div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt"
                                                                           default="Loading&hellip;"/></div>
        <g:javascript library="application"/>
    </body>
</html>