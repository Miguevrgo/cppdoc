---
symbol: std::string::operator[]
header: <string>
since: C++98
---

Accesses the character at specified index without bounds checking.

## Usage

```cpp
reference operator[](size_type pos); (1)
const_reference operator[](size_type pos) const; (2)
```

Returns a reference to the character at position `pos`. If `pos == size()` the reference returned refers
to the null terminator (writing to it is undefined behavior for (1) before C++11, and remains disallowed
for any value other than `charT()`). If `pos > size()` the behavior is undefined.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <string>

std::string s{"Hello"};
assert(s[0] == 'H');
s[0] = 'J';
assert(s == "Jello");
assert(s[s.size()] == '\0');
```
