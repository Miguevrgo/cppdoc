---
symbol: std::string::copy
header: <string>
since: C++98
---

Copies a substring into a raw character array.

## Usage

```cpp
size_type copy(CharT* dest, size_type count, size_type pos = 0) const;
```

Copies up to `count` characters starting at `pos` into the buffer pointed to by `dest`. No null
terminator is appended. Returns the number of characters actually copied.

## Exceptions

`std::out_of_range` if `pos > size()`.

## Time complexity

Linear in the number of characters copied.

## Examples

```cpp
#include <cassert>
#include <cstring>
#include <string>

std::string s{"Hello, World!"};
char buf[6]{};
std::size_t copied = s.copy(buf, 5, 7);
assert(copied == 5);
assert(std::memcmp(buf, "World", 5) == 0);
```
