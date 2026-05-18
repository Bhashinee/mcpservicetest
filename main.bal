import ballerina/mcp;

listener mcp:Listener mcpListener = new (8080);

@mcp:ServiceConfig {
    info: {
        name: "WeatherService",
        version: "1.0.0"
    }
}
service mcp:Service /mcp on mcpListener {
    # + return - decimal
    remote function getWeather() returns decimal {
        return 35;
    }

}
