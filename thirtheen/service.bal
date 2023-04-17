import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "thirtheen",
	id: "thirtheen-9edd15ba-db94-49ad-9f6c-46d5479c6be1"
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
