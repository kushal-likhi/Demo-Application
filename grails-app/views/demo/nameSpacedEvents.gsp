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

        <button onclick="jQuery('div').unbind('.color')">Remove Color Change</button>
        <button onclick="jQuery('div').unbind('.font')">Remove Font Change</button>
        <script type="text/javascript">

            jQuery("div").bind('mouseenter.color mouseleave.color', function (event) {
                        switch(event.type){
                            case 'mouseenter':
                                jQuery(this).css('color','red');
                                break;
                            case 'mouseleave':
                                jQuery(this).css('color','black');
                                break;
                        }
            });

            jQuery("div").bind('mouseenter.font mouseleave.font', function (event) {
                        switch(event.type){
                            case 'mouseenter':
                                jQuery(this).css('font-weight','bold');
                                break;
                            case 'mouseleave':
                                jQuery(this).css('font-weight','normal');
                                break;
                        }
            });



        </script>

    </body>
</html>