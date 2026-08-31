---
symbol: std::string::clear
header: <string>
since: C++98
---

Erases all characters from the string, leaving it with size 0.

## Usage

```cpp
void clear() noexcept;
```

All references, pointers and iterators to the contents are invalidated. The capacity of the string is
left unchanged.

## Time complexity

Linear in the size of the string.

## Examples

```cpp
#include <cassert>
#include <string>

std::string s{"Hello"};
assert(!s.empty());
s.clear();
assert(s.empty());
assert(s.size() == 0);
```
