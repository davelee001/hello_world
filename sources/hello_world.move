/*
/// Module: hello_world
module hello_world::hello_world;
*/

// For Move coding conventions, see
// https://docs.sui.io/concepts/sui-move-concepts/conventions

module hello_world::hello_world {
    use std::string::String;
    use std::string; // for concat

    public fun hello_world(): String {
        b"Hello, World!".to_string()
    }

    // Greet a specific name
    public fun hello_name(name: String): String {
        let hello = b"Hello, ".to_string();
        let with_name = string::concat(hello, name);
        string::concat(with_name, b"!".to_string())
    }

    // Generic “Good <time_of_day>!” greeting
    public fun greet(time_of_day: String): String {
        let prefix = b"Good ".to_string();
        let with_time = string::concat(prefix, time_of_day);
        string::concat(with_time, b"!".to_string())
    }

    // Simple math helpers
    public fun add(a: u64, b: u64): u64 { a + b }
    public fun multiply(a: u64, b: u64): u64 { a * b }
}


