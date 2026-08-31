---
symbol: std::map::rbegin
header: <map>
since: C++98
---

Returns a reverse iterator to the first element of the reversed map.

## Usage

```cpp
reverse_iterator rbegin(); (1)
const_reverse_iterator rbegin() const; (2)
```

Corresponds to the last element of the non-reversed map, i.e. the one with the greatest key. Elements are iterated in descending key order. If the map is empty, the returned iterator equals `rend()`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <map>

std::map<int, int> numbers{{1, 10}, {2, 20}, {3, 30}};

auto it = numbers.rbegin();
assert(it->first == 3);
assert(it->second == 30);
```
