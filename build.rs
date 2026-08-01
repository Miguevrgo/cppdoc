use std::fs;
use std::path::{Path, PathBuf};

fn collect(dir: &Path, out: &mut Vec<PathBuf>) {
    for entry in fs::read_dir(dir).unwrap() {
        let path = entry.unwrap().path();
        if path.is_dir() {
            collect(&path, out)
        } else {
            out.push(path)
        }
    }
}

fn esc(s: &str) -> String {
    s.replace('\\', "\\\\").replace('"', "\\\"")
}

fn main() {
    println!("cargo:rerun-if-changed=std");
    let mut paths = Vec::new();
    collect(Path::new("std"), &mut paths);

    let mut entries: Vec<_> = paths
        .iter()
        .map(|p| {
            let text = fs::read_to_string(p).unwrap();
            let (front, body) = text
                .strip_prefix("---\n")
                .unwrap()
                .split_once("\n---\n")
                .unwrap();
            let field = |k: &str| {
                let line = front.lines().find(|l| l.starts_with(k)).unwrap();
                line.split_once(": ").unwrap().1.to_string()
            };
            (
                field("symbol"),
                field("header"),
                field("since"),
                body.trim_start().to_string(),
            )
        })
        .collect();

    entries.sort();

    let mut out = String::from("pub static SYMBOLS: &[(&str, &str, &str, &str)] = &[\n");
    for (s, h, v, b) in &entries {
        out += &format!(
            "(\"{}\", \"{}\", \"{}\", \"{}\"),\n",
            esc(s),
            esc(h),
            esc(v),
            esc(b)
        );
    }
    out += "];\n";
    fs::write(
        Path::new(&std::env::var("OUT_DIR").unwrap()).join("symbols.rs"),
        out,
    )
    .unwrap();
}
