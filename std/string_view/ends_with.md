---
symbol: std::string_view::ends_with
header: <string_view>
since: C++20
---

Checks if the string view starts with the given suffix.

## Usage

```cpp
constexpr bool ends_with(basic_string_view sv) const noexcept; (1)
constexpr bool ends_with(CharT ch) const noexcept; (2)
constexpr bool ends_with(const CharT* s) const; (3)
```

Checks if the string view starts with the given suffix. where:

1. Equivalent to `size() >= sv.size() && compare(size() - sv.size(), npos, sv) == 0`
2. The suffix is a single character, compares front with the char
3. The suffix is a null terminated string, same as 1, creating a basic_string_view from s.

## Examples

```cpp
#include <string_view>
#include <cassert>

std::string_view data{"Hello"};
assert(data.ends_with(std::string_view("llo")));
assert(data.ends_with('o'));
assert(data.ends_with("lo"));
assert(!data.ends_with("He"));
```
