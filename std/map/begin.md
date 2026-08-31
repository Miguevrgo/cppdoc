---
symbol: std::map::begin
header: <map>
since: C++98
---

Returns an iterator to the first element.

## Usage

```cpp
iterator begin(); (1)
const_iterator begin() const; (2)
```

Elements are iterated in ascending key order. If the map is empty, the returned iterator equals `end()`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <map>

std::map<int, int> numbers{{3, 30}, {1, 10}, {2, 20}};

auto it = numbers.begin();
assert(it->first == 1);
assert(it->second == 10);
```
