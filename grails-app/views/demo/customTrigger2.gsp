<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <meta content="main" name="layout">
        <title></title>
    </head>

    <body>
        <br>
        <br>



        <input type="text" class="target">
        <input type="text" class="target">
        <input type="text" class="target">
        <input type="text" class="target">




        <script type="text/javascript">

            jQuery("input").bind('checkForEmpty', function (event) {
                var el = jQuery(this);
                if(el.val().trim().length == 0)el.css('background', '#faa');
            });

            jQuery("input").bind('checkForNumber', function (event) {
                var el = jQuery(this);
                if(isNaN(el.val())) el.css('background', '#faa');
            });


            jQuery("input").bind('keyup change blur',function () {
                jQuery(this).css('background', 'white');
                jQuery(this).trigger("checkForEmpty");
                jQuery(this).trigger("checkForNumber");
            });

        </script>

    </body>
</html>