module hello_world::tests {
    use hello_world::hello_world;
    use std::string;

    #[test]
    fun test_add() {
        assert!(hello_world::add(2, 3) == 5, 0);
    }

    #[test]
    fun test_multiply() {
        assert!(hello_world::multiply(3, 4) == 12, 0);
    }

    #[test]
    fun test_hello_name() {
        let name = string::utf8(b"Bridget");
        let s = hello_world::hello_name(name);
        // "Hello, " (7) + "Bridget" (7) + "!" (1) = 15
        assert!(string::length(&s) == 15, 0);
    }

    #[test]
    fun test_greet() {
        let tod = string::utf8(b"evening");
        let s = hello_world::greet(tod);
        // "Good " (5) + "evening" (7) + "!" (1) = 13
        assert!(string::length(&s) == 13, 0);
    }
}
