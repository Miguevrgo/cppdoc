---
symbol: std::map::cbegin
header: <map>
since: C++11
---

Returns a const iterator to the first element.

## Usage

```cpp
const_iterator cbegin() const;
```

Elements are iterated in ascending key order. If the map is empty, the returned iterator equals `cend()`. Always returns a `const_iterator`, even on a non-const map, unlike `begin()`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <map>

std::map<int, int> numbers{{3, 30}, {1, 10}, {2, 20}};

auto it = numbers.cbegin();
assert(it->first == 1);
```
