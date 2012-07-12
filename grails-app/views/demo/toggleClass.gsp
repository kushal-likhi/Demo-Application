<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <meta content="main" name="layout">
        <title></title>
        <style type="text/css">
        .highlight {
            color: red;
        }
        </style>
    </head>

    <body>
        <br>
        <br>

        <div>Bring mouse on me! yo!</div>
        <br>

        <div>Bring mouse on me! yo!</div>
        <br>

        <div>Bring mouse on me! yo!</div>

        <script type="text/javascript">

            jQuery("div").bind('mouseenter mouseleave', function (event) {
                jQuery(this).toggleClass("highlight");
            });



        </script>

    </body>
</html>