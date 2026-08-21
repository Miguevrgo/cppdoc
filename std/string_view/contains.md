---
symbol: std::string_view::contains
header: <string_view>
since: C++23
---

Checks if the string view contains the given substring.

## Usage

```cpp
constexpr bool contains(basic_string_view sv) const noexcept; (1)
constexpr bool contains(CharT ch) const noexcept; (2)
constexpr bool contains(const CharT* s) const; (3)
```

Checks if the string view contains the given substring where it is a:

1. String_view
2. Single character
3. Null-terminated character string

## Examples

```cpp
#include <string_view>
#include <cassert>

std::string_view data{"Hello"};
assert(data.contains(std::string_view("He"));
assert(data.contains('H'));
assert(data.contains("He"));
assert(!data.contains("World"));
```
