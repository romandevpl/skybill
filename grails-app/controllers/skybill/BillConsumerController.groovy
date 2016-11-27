package skybill

class BillConsumerController {
    HttpClientService httpClientService
    LabelService labelService

    def show() {
        String url = labelService.endpointURL
        def result = httpClientService.connect(url)

        def (message, error, jsonData) = prepareModel(result)

        render(view: "/billConsumer/index", model: [message: message, error: error, jsonData: jsonData])
    }

    private prepareModel(result) {
        def jsonData = result?.json
        def message = result?.error ? labelService.failMessage : labelService.successMessage
        def error = result?.error

        [message, error, jsonData]
    }
}
