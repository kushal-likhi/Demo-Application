<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <jq:resources/>
        <title></title>
    </head>

    <body style="padding: 40px">

        <h1>Todo List</h1>
        <ol id="list" contenteditable="true">
            <li>Enter contents</li>
        </ol>


        <script type="text/javascript">
            $(function () {

                if (window.localStorage && window.localStorage.todoList) {
                    $("#list").html(window.localStorage.todoList);
                } else {
                    // Handle this old non-HTML5 Browser
                }

                $("#list").blur(function () {
                    if (window.localStorage) {
                        window.localStorage.todoList = $("#list").html();
                    }

                });

            });
        </script>
    </body>
</html>