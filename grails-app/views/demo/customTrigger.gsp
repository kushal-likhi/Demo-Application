<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <meta content="main" name="layout">
        <title></title>
    </head>

    <body>
        <br>
        <br>
        <input type="text" id="first">
        <button>Copy</button>
        <br>
        <br>


        <input type="text" class="target">
        <input type="text" class="target">
        <input type="text" class="target">
        <input type="text" class="target">




        <script type="text/javascript">

            jQuery(".target").bind('copyTextFromSource', function (event) {
//                        alert(event.type)
                jQuery(this).val(jQuery("#first").val());
            });



            jQuery("button").click(function(){
                jQuery(".target").trigger("copyTextFromSource")
            });

        </script>

    </body>
</html>