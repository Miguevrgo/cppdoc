---
symbol: std::string_view
header: <string_view>
since: C++17
---

Non-owning, read-only view over a contiguous sequence of characters.

## Definition

```cpp
template<
    class CharT,
    class Traits = std::char_traits<CharT>
> class basic_string_view;

using string_view = basic_string_view<char>;
```

A `string_view` does not own the characters it refers to; it only stores a pointer and a length. It does not guarantee the viewed sequence is null-terminated, so passing `.data()` to a C API expecting a null-terminated string is unsafe unless checked separately. The underlying character data must outlive the `string_view`; accessing it after the viewed storage is destroyed, reallocated, or otherwise invalidated is undefined behavior.

## Complexity

- Random access **O(1)**
- Construction from a pointer/length or another view **O(1)**
- Substring, search, and comparison operations **O(N)** in the sequence length

## Examples

```cpp
#include <cassert>
#include <string>
#include <string_view>

std::string s = "Hello, World!";
std::string_view sv{s};
assert(sv.size() == 13);
assert(sv.substr(7) == "World!");
assert(sv.find("World") == 7);
```
