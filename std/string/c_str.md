---
symbol: std::string::c_str
header: <string>
since: C++98
---

Returns a pointer to a null-terminated character array with the contents of the string.

## Usage

```cpp
const CharT* c_str() const noexcept;
```

Returns a pointer such that the range `[c_str(), c_str() + size()]` is valid, with `c_str()[size()]`
being the null character. Equivalent to `data()`. The pointer is invalidated by any non-const member
function call that modifies the string.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <cstring>
#include <string>

std::string s{"Hello"};
const char* raw = s.c_str();
assert(std::strlen(raw) == 5);
assert(std::strcmp(raw, "Hello") == 0);
```
