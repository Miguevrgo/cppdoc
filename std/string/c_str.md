---
symbol: std::string::c_str
header: <string>
since: C++98
---

Returns a pointer to a null-terminated character array with data equivalent to the string.

## Usage

```cpp
const CharT* c_str() const noexcept;
```

Returns a pointer to a null-terminated character array. The pointer returned is valid until any non-const member function is called on the string.
Equivalent to `data()`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <cstring>
#include <string>

std::string s = "hello";
const char* cstr = s.c_str();

assert(std::strcmp(cstr, "hello") == 0);
assert(cstr[5] == '\0');
```
