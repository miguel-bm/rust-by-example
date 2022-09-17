fn main() {
    println!("Hello World!");
    let x = 5 + 4 * 3;
    // This is a line comment
    /*
    This is a block comment  with a /* nested block comment */
    */
    println!("What is the value of `x` = 5 + 4 * 3? x = {}", x);

    let number: f64 = 1.0;
    let width: usize = 6;
    println!("Some interesting format {0} {number:0>width$}", "here");
}
