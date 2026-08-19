---
symbol: std::string::size
header: <string>
since: C++98
---

Returns the number of elements in the string.

## Usage

```cpp
size_type size() const;
size_type length() const;
```

The number of elements in the string is returned as a `size_type`.

## Examples

```cpp
#include <string>
#include <cassert>

std::string str{"Hello"};
assert(str.size() == 5);
assert(str.length() == 5);
```
