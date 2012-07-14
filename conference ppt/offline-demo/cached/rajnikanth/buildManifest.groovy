
File manifest = new File("site.manifest")

manifest.delete()
manifest.createNewFile()


String text = """CACHE MANIFEST
#ver ${UUID.randomUUID()}
"""

new File(".").eachFileRecurse{File file->
if(file.isDirectory()) return;
println file

text += "${file.toString().replace('./','')}\n"

}

manifest.text = text
