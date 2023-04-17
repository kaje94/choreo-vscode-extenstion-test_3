import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "eleventh",
	id: "eleventh-74818b22-e5e0-42e8-b267-566cfa8b1a5d"
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
