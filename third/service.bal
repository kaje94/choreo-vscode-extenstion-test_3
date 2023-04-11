import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "third",
	id: "third-df90a6a3-fb19-4917-adf9-40ef18514b83"
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
