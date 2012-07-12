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

        <script type="text/javascript">

            jQuery("div").bind('mouseenter mouseleave', function (event) {
                        switch(event.type){
                            case 'mouseenter':
                                jQuery(this).css('color','green');
                                break;
                            case 'mouseleave':
                                jQuery(this).css('color','black');
                                break;
                        }
            });



        </script>

    </body>
</html>