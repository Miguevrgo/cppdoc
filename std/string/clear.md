---
symbol: std::string::clear
header: <string>
since: C++98
---

Erases all characters from the string.

## Usage

```cpp
void clear() noexcept;
```

Removes all characters from the string. `size()` becomes `0`.
Does not change the capacity of the string.

## Time complexity

Constant time although standard requires linear

## Examples

```cpp
#include <cassert>
#include <string>

std::string s = "hello";
assert(!s.empty());

s.clear();
assert(s.empty());
assert(s.size() == 0);
```
