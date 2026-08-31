---
symbol: std::multimap::rbegin
header: <map>
since: C++98
---

Returns a reverse iterator to the first element of the reversed multimap.

## Usage

```cpp
reverse_iterator rbegin(); (1)
const_reverse_iterator rbegin() const; (2)
```

Corresponds to the last element of the non-reversed multimap, i.e. the one with the greatest key. Elements are iterated in descending key order; elements with equivalent keys appear in reverse insertion order. If the multimap is empty, the returned iterator equals `rend()`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <map>

std::multimap<int, int> numbers{{1, 10}, {2, 20}, {2, 21}};

auto it = numbers.rbegin();
assert(it->first == 2);
assert(it->second == 21);
```
