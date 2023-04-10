import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "other 4",
	id: "other 4-fa65c7cd-3616-4b5c-ab4f-c753b8a1ae6a"
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
