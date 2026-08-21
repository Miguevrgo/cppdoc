---
symbol: std::string_view::starts_with
header: <string_view>
since: C++20
---

Checks if the string view starts with the given prefix.

## Usage

```cpp
constexpr bool starts_with(basic_string_view sv) const noexcept; (1)
constexpr bool starts_with(CharT ch) const noexcept; (2)
constexpr bool starts_with(const CharT* s) const; (3)
```

Checks if the string view starts with the given prefix. where:

1. Equivalent to `basic_string_view(data(), std::min(size(), sv.size())) == sv`
2. The prefix is a single character, compares front with the char
3. The prefix is a null terminated string, same as 1, creating a basic_string_view from s.

## Examples

```cpp
#include <string_view>
#include <cassert>

std::string_view data{"Hello"};
assert(data.starts_with(std::string_view("He")));
assert(data.starts_with('H'));
assert(data.starts_with("He"));
assert(!data.starts_with("e"));
```
