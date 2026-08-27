---
symbol: std::map
header: <map>
since: C++98
---

Sorted associative container that contains key-value pairs with unique keys.

## Definition

```cpp
template<
    class Key,
    class T,
    class Compare = std::less<Key>,
    class Allocator = std::allocator<std::pair<const Key, T>>
> class map;
```

Keys are sorted by using the comparison function `Compare`. Usually implemented as a red-black tree.

## Examples

```cpp
#include <cassert>
#include <map>
#include <string>

std::map<std::string, int> ages;
ages["Alice"] = 30;
ages["Bob"] = 25;

assert(ages.size() == 2);
assert(ages["Alice"] == 30);
assert(ages.contains("Bob"));
```
