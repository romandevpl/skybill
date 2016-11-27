package skybill

import groovy.json.JsonSlurper

class HttpClientService {

    def connect(String url) {
        try {
            def json = new JsonSlurper().parseText(new URL(url).text)
            return [json: json]
        } catch (Exception ex) {
            return [error: ex.getMessage()]
        }
    }
}
