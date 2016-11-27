package skybill

import grails.test.mixin.TestFor
import spock.lang.Specification

@TestFor(BillConsumerController)
class BillConsumerControllerSpec extends Specification {

    LabelService mockedLabelService
    HttpClientService mockedHttpClientService
    String mockedError, mockedResponse

    def setup() {
        mockedError = "Error"
        mockedResponse = "JSON response"

        mockedLabelService = Mock LabelService
        mockedHttpClientService = Mock HttpClientService

        controller.labelService = mockedLabelService
        controller.httpClientService = mockedHttpClientService
    }

    void "If error was thrown during call to an endpoint a fail message should be shown"() {
        when:
        controller.show()
        then:
        1 * mockedHttpClientService.connect(_) >> [error: mockedError]
        model.error == mockedError
        model.message == mockedLabelService.failMessage
    }

    void "If call to an endpoint succeed a success message should be shown"() {
        when:
        controller.show()
        then:
        1 * mockedHttpClientService.connect(_) >> [json: mockedResponse]
        model.error == null
        model.jsonData == mockedResponse
        model.message == mockedLabelService.successMessage
    }
}
