---
symbol: std::multimap::key_comp
header: <map>
since: C++98
---

Returns the function used to compare keys.

## Usage

```cpp
key_compare key_comp() const;
```

Returns a copy of the comparison function passed as the `Compare` template argument, or a default-constructed `std::less<Key>` if none was given.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <map>

std::multimap<int, int> numbers{{1, 10}, {1, 20}};

auto cmp = numbers.key_comp();
assert(cmp(1, 2));
assert(!cmp(2, 1));
```
