use std::fs;
use std::path::Path;
use std::env;

fn main() {
    let filename = env::args().nth(1).expect("No file provided");

    // Check if the file has the .sp extension
    let path = Path::new(&filename);
    if path.extension().unwrap_or_default() != "sp" {
        eprintln!("Invalid file type. Please use a '.sp' file.");
        return;
    }

    let content = fs::read_to_string(&filename).expect("Could not read file");
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
