import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "sixteen",
	id: "sixteen-13fb05b9-3713-4f40-96b6-8dcb07cd60a1"
}
service / on new http:Listener(9090) {

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get greeting(string name) returns string|error {
        // Send a response back to the caller.
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }
}
