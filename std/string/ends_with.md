---
symbol: std::string::ends_with
header: <string>
since: C++20
---

Checks if the string ends with the given suffix.

## Usage

```cpp
bool ends_with(std::string_view sv) const noexcept; (1)
bool ends_with(CharT ch) const noexcept; (2)
bool ends_with(const CharT* s) const; (3)
```

1. Equivalent to `size() >= sv.size() && std::string_view(*this).compare(size() - sv.size(), npos, sv) == 0`.
2. The suffix is a single character, compares `back()` with `ch`.
3. The suffix is a null-terminated string, equivalent to `ends_with(std::string_view(s))`.

## Time complexity

Linear in the length of the suffix.

## Examples

```cpp
#include <cassert>
#include <string>

std::string s{"Hello"};
assert(s.ends_with("llo"));
assert(s.ends_with('o'));
assert(!s.ends_with("He"));
```
