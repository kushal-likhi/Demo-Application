package yo

class DemoTagLib {

    static namespace = "demo"

    def htmlCode = {attrs, body ->

        String code = body()
        code = code.encodeAsHTML()

        out << """
<pre class="htmlCode">
    ${code}
</pre>
"""
    }

    def jsCode = {attrs, body ->

        String code = body()
        code = code.encodeAsHTML()

        out << """
<pre class="js">
    ${code}
</pre>
"""
    }

}
