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

    def toDoListDemo = {

    }

    @Listed
    def staticSiteNoCache = {
        redirect(url: "http://localhost/offline-demo/nocache/site/")
    }

    def staticSiteNoCacheDemo = {
        redirect(url: "http://localhost/offline-demo/nocache/site/")
    }

    @Listed
    def staticSiteCached = {
        redirect(url: "http://localhost/offline-demo/cached/site/")
    }

    def staticSiteCachedDemo = {
        redirect(url: "http://localhost/offline-demo/cached/site/")
    }

    @Listed
    def rajnikanthSite = {

    }

    def rajnikanthSiteDemo = {
        redirect(url: "http://localhost/offline-demo/cached/rajnikanth/")
    }

    @Listed
    def calculator = {

    }

    def calculatorDemo = {

    }

}
