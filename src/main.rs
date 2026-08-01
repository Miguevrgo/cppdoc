include!(concat!(env!("OUT_DIR"), "/symbols.rs"));

fn main() {
    let key = std::env::args().nth(1).unwrap_or_default();
    match SYMBOLS.binary_search_by_key(&key.as_str(), |&(s, _, _, _)| s) {
        Ok(i) => print!("{}", SYMBOLS[i].3),
        Err(_) => std::process::exit(1),
    }
}
