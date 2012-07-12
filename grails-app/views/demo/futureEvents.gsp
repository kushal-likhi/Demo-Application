<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <meta content="main" name="layout">
        <title></title>
    </head>

    <body>
        <div id="cont">
            <br>
            <br>

            <div>Bring mouse on me! yo!</div>
            <br>

            <div>Bring mouse on me! yo!</div>
            <br>

            <div>Bring mouse on me! yo!</div>

            <button onclick="jQuery(this).before('<br><div>Bring mouse on me! yo!</div>')">ADD</button>
        </div>
        <script type="text/javascript">

            jQuery("div","#cont").live('mouseenter mouseleave', function (event) {
                switch (event.type) {
                    case 'mouseenter':
                        jQuery(this).css('color', 'red');
                        break;
                    case 'mouseleave':
                        jQuery(this).css('color', 'black');
                        break;
                }
            });

        </script>

    </body>
</html>