<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <meta content="main" name="layout">
        <title></title>
    </head>

    <body>

        <g:link target="_blank" controller="demo" action="rajnikanthSiteDemo"><button>See Working Demo</button></g:link>
        <br/>
        <br/>

        <h2>Html Code</h2>

        <demo:htmlCode>
            <html manifest="site.manifest">
                ....
                ....
                ....
                ....
            </html>
        </demo:htmlCode>
        <br/>

        <h2>JavaScript Code</h2>
        <demo:jsCode>
            <script type="text/javascript">
                function destroyPage() {
                    jQuery("body").html("<br><br><h1 align='center'>Rajnikanth's Site Only Work when you are Offline</h1>");
                }
                jQuery(function () {
                    $(window).bind("online", destroyPage);
                    $(window).bind("offline", function () {
                        window.location.reload();
                    });

                    if (navigator.onLine) {
                        destroyPage();
                    }
                });
            </script>
        </demo:jsCode>
    </body>
</html>