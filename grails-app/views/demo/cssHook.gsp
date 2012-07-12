<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <meta content="main" name="layout">
        <title></title>
        <style type="text/css">
        .button {
            margin: 5px;
            padding: 5px;
            cursor: pointer;

        }

        .add {
            padding-left: 20px;
            background: url("${resource(dir:'images', file:'skin/database_save.png')}");
            background-position: left;
            background-repeat: no-repeat;
        }
        </style>
    </head>

    <body>
        <br>
        <br>

        <div id="hello" style="awesomeCss:2">Hello</div>

        <div id="add">Hello</div>

        <br>
        <script type="text/javascript">

            $.cssHooks.awesomeCss = {
                get:function (elem, computed, extra) {
                    return $.css(elem, $.support.radius);
                },
                set:function (elem, value) {
                    jQuery(elem).css('border', value + 'px solid gray');
                    jQuery(elem).css('background', '#aaf');
                }
            };

            $.cssHooks.button = {
                get:function (elem, computed, extra) {
                    return $.css(elem, $.support.radius);
                },
                set:function (elem, value) {
                    jQuery(elem).addClass('button');
                    jQuery(elem).addClass(value);
                }
            };



//            jQuery("#hello").css('awesomeCss', "2");
            jQuery("#add").css('button', "add");
        </script>

    </body>
</html>