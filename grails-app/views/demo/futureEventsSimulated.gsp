<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <meta content="main" name="layout">
        <title></title>
    </head>

    <body>
        <br>
        <br>

        <div>Bring mouse on me! yo!</div>
        <br>

        <div>Bring mouse on me! yo!</div>
        <br>

        <div>Bring mouse on me! yo!</div>
        <button onclick="jQuery(this).before('<br><div>Bring mouse on me! yo!</div>');bind()">ADD</button>
        <script type="text/javascript">

            function bind() {
                jQuery("div").unbind('.yo'); //to prevent redundant execution from the handler stack
                jQuery("div").bind('mouseenter.yo mouseleave.yo', function (event) {
                    switch (event.type) {
                        case 'mouseenter':
                            jQuery(this).css('color', 'red');
                            break;
                        case 'mouseleave':
                            jQuery(this).css('color', 'black');
                            break;
                    }
                });
            }
            bind();
        </script>

    </body>
</html>