---
symbol: std::multimap::begin
header: <map>
since: C++98
---

Returns an iterator to the first element.

## Usage

```cpp
iterator begin(); (1)
const_iterator begin() const; (2)
```

Elements are iterated in ascending key order; elements with equivalent keys appear in insertion order. If the multimap is empty, the returned iterator equals `end()`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <map>

std::multimap<int, int> numbers{{3, 30}, {1, 10}, {1, 20}};

auto it = numbers.begin();
assert(it->first == 1);
assert(it->second == 10);
```
