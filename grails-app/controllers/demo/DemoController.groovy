package demo

class DemoController {

    def beforeInterceptor = {
        DemoController.metaClass.getListedActions = {
            List fields = []
            DemoController.declaredFields.each {field -> field.declaredAnnotations.find {annotation -> annotation.toString().contains("demo.Listed")} ? fields.push(field) : ""}
            return fields
        }
    }

    def index = {
        [actions: getListedActions()*.name]
    }

//    @Listed
    def customTrigger = {}

//    @Listed
    def customTrigger2 = {}

//    @Listed
    def multipleEventsBindedSimultaneously = {}

//    @Listed
    def nameSpacedEvents = {}

//    @Listed
    def futureEvents = {}

//    @Listed
    def futureEventsSimulated = {}

//    @Listed
    def oneTimeEvent = {}

//    @Listed
    def awesomeProxy = {}

//    @Listed
    def cssHook = {}

//    @Listed
    def toggleClass = {}

//    @Listed
    def pushStackBasic = {}







    @Listed
    def toDoList = {

    }

    @Listed
    def toDoListDemo = {

    }

}
