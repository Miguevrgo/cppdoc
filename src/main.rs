use std::collections::HashMap;

fn main() {
    // This idk, maybe extract to method
    let mut arg = std::env::args();
    if arg.len() != 2 {
        eprintln!("Usage: $ cppdoc <std::crate::method>");
        std::process::exit(1);
    }

    let method_name = arg.next().unwrap();
    let doc_path = method_name.replace("::", "/");

    // This has to be done for each path in std/
    // in comp time
    let mut map = HashMap::new();
    let push_back = include_str!("../std/vector/push_back.md");
    // So this path is not runtime-handled
    map.insert(doc_path.clone(), push_back);

    // Then this is done at runtime with path
    println!("{}", map.get(&doc_path).unwrap_or(&"Not found"));
}
