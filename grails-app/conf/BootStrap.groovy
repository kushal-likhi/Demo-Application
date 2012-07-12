import demo.DemoController

class BootStrap {

    def init = { servletContext ->

        DemoController.metaClass.getListedActions = {
            List fields = []
            DemoController.declaredFields.each {field -> field.declaredAnnotations.find {annotation -> annotation.toString().contains("demo.Listed")} ? fields.push(field) : ""}
            return fields
        }

    }
    def destroy = {
    }
}
