<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <meta content="main" name="layout">
        <title></title>
    </head>

    <body>
        <br>
        <br>
        <button>I will alert only once! yo!</button>
        <br>
        <script type="text/javascript">

            jQuery("button").one('click', function (event) {
                alert("Hello")
            });

        </script>

    </body>
</html>