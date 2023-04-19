import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "fifth",
	id: "fifth-ef0a9703-ce0a-47b5-a67d-5345eef16ae9"
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
