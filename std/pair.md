---
symbol: std::pair
header: <utility>
since: C++98
---

Class template that provides a way to store two heterogeneous objects as a single unit.

## Definition

```cpp
template<class T1, class T2>
struct pair;
```

Couples together a pair of values, which may be of different types.

## Examples

```cpp
#include <cassert>
#include <string>
#include <utility>

std::pair<int, std::string> p{1, "one"};
assert(p.first == 1);
assert(p.second == "one");

auto [key, val] = p;
assert(key == 1);
```
