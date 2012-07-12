<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <meta content="main" name="layout">
        <title></title>
    </head>

    <body>
        <br>
        <br>
        <button id="master">update Me and My Friend</button>
        <button id="friend">i am the Friend</button>
        <br>
        <script type="text/javascript">

            function makeMeBeautiful() {
                jQuery(this).css({border:'px solid gray', background:'#aaf'})
            }

            jQuery("#master").bind('click', makeMeBeautiful);
            jQuery("#master").bind('click', jQuery.proxy(makeMeBeautiful, jQuery("#friend")));

        </script>

    </body>
</html>