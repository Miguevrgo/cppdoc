---
symbol: std::string::contains
header: <string>
since: C++23
---

Checks if the string contains the given substring.

## Usage

```cpp
bool contains(std::string_view sv) const noexcept; (1)
bool contains(CharT ch) const noexcept; (2)
bool contains(const CharT* s) const; (3)
```

Checks if the string contains the given substring, where it is a:

1. `std::string_view`
2. Single character
3. Null-terminated character string

Equivalent to `find(...) != npos`.

## Time complexity

O(size() * sv.size()) worst case.

## Examples

```cpp
#include <cassert>
#include <string>

std::string s{"Hello"};
assert(s.contains("He"));
assert(s.contains('H'));
assert(!s.contains("World"));
```
