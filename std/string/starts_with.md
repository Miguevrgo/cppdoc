---
symbol: std::string::starts_with
header: <string>
since: C++20
---

Checks if the string starts with the given prefix.

## Usage

```cpp
bool starts_with(std::string_view sv) const noexcept; (1)
bool starts_with(CharT ch) const noexcept; (2)
bool starts_with(const CharT* s) const; (3)
```

1. Equivalent to `std::string_view(*this).substr(0, sv.size()) == sv`.
2. The prefix is a single character, compares `front()` with `ch`.
3. The prefix is a null-terminated string, equivalent to `starts_with(std::string_view(s))`.

## Time complexity

Linear in the length of the prefix.

## Examples

```cpp
#include <cassert>
#include <string>

std::string s{"Hello"};
assert(s.starts_with("He"));
assert(s.starts_with('H'));
assert(!s.starts_with("ello"));
```
