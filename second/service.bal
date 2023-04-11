import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "second",
	id: "second-73980c2b-375c-4ffc-8ea4-a499afa18efa"
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
