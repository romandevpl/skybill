class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/" {
            controller = "BillConsumer"
            action = "show"
        }
        "500"(view:'/error')
	}
}
