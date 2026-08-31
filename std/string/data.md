---
symbol: std::string::data
header: <string>
since: C++98
---

Returns a pointer to the underlying character array.

## Usage

```cpp
const CharT* data() const noexcept; (1)
CharT* data() noexcept; (2) [C++17]
```

Returns a pointer such that the range `[data(), data() + size())` is valid and equal to the contents of
the string. Since C++11 the buffer is null-terminated, so `data()[size()]` is `'\0'`. (2) allows writing
through the pointer, but writing `charT()` to `data()[size()]` is the only modification allowed at that
position.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <cstring>
#include <string>

std::string s{"Hello"};
assert(std::strcmp(s.data(), "Hello") == 0);
assert(s.data()[s.size()] == '\0');
```
