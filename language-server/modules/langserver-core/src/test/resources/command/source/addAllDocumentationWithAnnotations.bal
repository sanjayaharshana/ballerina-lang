import ballerina/io;
import ballerina/http;

function testDocumentation() {
    
}

@http:ServiceConfig {
    basePath: "/testDoc"
}
service testDocService on new http:Listener(8080) {
    @http:ResourceConfig {
        path: "/testDocRes"
    }
    resource function testDocResource(http:Caller caller, http:Request request) {
        http:Response res = new;
        _ = caller->respond(res);
    }
}

type testDocRecord record {
    int field1 = 12;
    string field2 = "hello";
};

type testDocObject object {
    int testField = 12;
    private int testPrivate = 12;
    public string testString = "hello";

    function testFunctionSignature();
    function testFunctionWithImpl() {
        io:println("Hello World!!");
    }
};
