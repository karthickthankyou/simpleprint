use std::fs;

fn main() {
    let filename = std::env::args().nth(1).expect("No file provided");
    let content = fs::read_to_string(filename).expect("Could not read file");

    interpret(&content);
}

fn interpret(input: &str) {
    for line in input.lines() {
        if line.starts_with("print ") && line.ends_with("\"") && line.contains("\"") {
            let message = &line[7..line.len() - 1];
            println!("{}", message);
        } else {
            eprintln!("Invalid command: {}", line);
        }
    }
}
