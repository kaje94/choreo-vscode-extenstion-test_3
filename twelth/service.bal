import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "twelth",
	id: "twelth-4774c508-aadb-443e-98c0-9dc40ba148ab"
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
