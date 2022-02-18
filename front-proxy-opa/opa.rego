package envoy.authz

import input.attributes.request.http as http_request

default allow = false

name = name {
    jwt_payload := http_request.headers["jwt-payload"]
    payload := json.unmarshal(base64url.decode(jwt_payload))
    name := payload["cognito:username"]
}

allow = response {
    http_request.method == "GET"
    http_request.path == "/index.html"
    response := {
        "allowed": true,
        "headers": {
            "x-jwt-name": name
        }
    } 
}
