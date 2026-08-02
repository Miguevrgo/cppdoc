# cppdoc

STL documentation on `K`, the way rust-analyzer does it for Rust.

Press `K` on a C++ standard library symbol and get a clean signature, a short
explanation, the header it lives in, and usage examples. Everything is written
by hand, in Markdown, and shipped with the plugin.

Symbols without an entry fall through to your normal hover, so installing this
is never worse than not installing it.

## Install

lazy.nvim:

```lua
{ "Miguevrgo/cppdoc", ft = "cpp" }
```

That is the whole thing, on plain lazy.nvim and on LazyVim alike. No build
step, no compiler, no external binary.

To use a different key:

```lua
{ "Miguevrgo/cppdoc", ft = "cpp", opts = { key = "<leader>k" } }
```

`key = false` maps nothing and leaves you `:Cppdoc`.

## Requirements

- Neovim 0.11 or newer
- clangd attached to the buffer

If something does not work, this tells you which part:

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
| `docs` | `std/` inside the plugin | Directory holding the entries |

The key is mapped buffer-locally and re-applied shortly after clangd attaches,
so it survives distributions that install their own `K` on `LspAttach`. For a
quarter of a second after a file opens, `K` is still whatever your config set.

## How it works

On `K` the plugin asks clangd for `textDocument/symbolInfo`, a clangd extension
that returns the symbol under the cursor as structured data rather than as
prose. `containerName` and `name` are joined into a key such as
`std::vector::push_back`, already canonical and free of template arguments and
inline namespaces.

The key **is** the path. `std::vector::push_back` is `std/vector/push_back.md`,
so a lookup is a single file read, around 4 µs, with no index to build and no
process to spawn.

## Writing entries

One Markdown file per symbol, the directory mirroring the namespace, with three
frontmatter keys:

```markdown
---
symbol: std::vector::push_back
header: <vector>
since: C++98
---

Appends an element to the end of the vector.
```

Everything after the second `---` is rendered in the float.

Operators cannot always be filenames, so their last component is spelled out:
`std::vector::operator[]` lives in `std/vector/operator_at.md`. The mapping is
the `operators` table at the top of `lua/cppdoc/init.lua`.

A Rust implementation that embedded every entry into a single static binary
lives on the [`rust`](../../tree/rust) branch. It was dropped because the plugin
already ships the Markdown, so reading it directly is both simpler and faster.

## License

MIT
