import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "other_1",
	id: "other_1-537d7d48-acc0-48e7-ae5a-0045e1eeba30"
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
