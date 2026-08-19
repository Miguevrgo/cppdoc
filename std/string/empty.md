---
symbol: std::string::empty
header: <string>
since: C++98
---

Checks if the string is empty.

## Usage

```cpp
bool empty() const;
```

Returns `true` if the string has no characters, `false` otherwise.

## Examples

```cpp
#include <string>
#include <cassert>

std::string hello = "Hello World";
std::string empty{};
assert(!values.empty());
assert(empty.empty());
hello.clear();
assert(values.empty());
```
