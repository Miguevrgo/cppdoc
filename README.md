# cppdoc

STL documentation on `K`, the way rust-analyzer does it for Rust.

Press `K` on a C++ standard library symbol and get some simple and useful information.
Everything is written by hand and embedded in a single static binary.
No database, no daemon, no network.

Symbols without an entry fall through to your normal hover.

## Install

lazy.nvim:

```lua
{ "Miguevrgo/cppdoc", ft = "cpp", build = "cargo build --release" }
```

That is the whole thing, on plain lazy.nvim and on LazyVim alike.

To use a different key:

```lua
{ "Miguevrgo/cppdoc", ft = "cpp", build = "cargo build --release",
  opts = { key = "<leader>k" } }
```

`key = false` maps nothing and leaves you `:Cppdoc`.

## Requirements

- Neovim 0.11 or newer
- clangd attached to the buffer
- cargo, only to build on install

If something does not work, this tells you which one is missing:

```vim
:checkhealth cppdoc
```

clangd also needs to know the language standard, or C++20 and C++23 symbols
will not resolve at all. A `compile_commands.json` in the project covers it.
Without one, a global fallback works for every project:

```yaml
# ~/.config/clangd/config.yaml
CompileFlags:
  Add: [-std=c++23]
```

## Usage

`K` on a C++ symbol, or `:Cppdoc`.

| Cursor on | Result |
|---|---|
| A documented STL symbol | cppdoc float |
| An STL symbol with no entry yet | normal hover |
| Your own code, `auto`, a local variable | normal hover |
| Nothing hoverable | nothing |

## Options

Passed through `opts`, or assigned on the module.

| Option | Default | Meaning |
|---|---|---|
| `key` | `"K"` | Key to map, or `false` for none |
| `filetypes` | `{ "cpp", "cuda", "objcpp" }` | Where the key is mapped |
| `bin` | local build, else `cppdoc` on `PATH` | Path to the executable |

The key is mapped buffer-locally, and re-applied shortly after clangd attaches
so it survives distributions that install their own `K` on `LspAttach`. For a
quarter of a second after a file opens, `K` is still whatever your config set.

## How it works

On `K` the plugin asks clangd for `textDocument/symbolInfo`, a clangd extension
that returns the symbol under the cursor as structured data rather than as
prose. `containerName` and `name` are joined into a lookup key such as
`std::vector::push_back`, already canonical and free of template arguments and
inline namespaces.

That key is passed to the `cppdoc` binary, which binary searches a sorted table
built into its `.rodata` at compile time and prints the Markdown body. A hover
costs around 230 µs end to end, process spawn included, which is why there is
no language server and no background process.

Entries live in `std/`, one Markdown file per symbol, the directory mirroring
the namespace, so `std::vector::push_back` is `std/vector/push_back.md`.
`build.rs` walks that tree and generates the table. Adding documentation means
adding a file.
