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
                   <%--
  Created by IntelliJ IDEA.
  User: kushal
  Date: 13/7/12
  Time: 1:38 AM
  To change this template use File | Settings | File Templates.
--%>

    <body>
        <div>
            <div class="container">
            <span>hello</span>
            <span>fello</span>
            </div>
        </div>
        <script type="text/javascript">

            // select some divs
            $('div.container')
                // find some spans inside those divs and add a class to them
                    .find('span').addClass('baby')
                // pop those spans off the "stack",
                // returning to the previous collection (div.container)
                    .end()
                // add a class to the parent of each div.container
                    .parent().addClass('daddy');


        </script>

    </body>
</html>