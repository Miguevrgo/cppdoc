---
symbol: std::multimap::cbegin
header: <map>
since: C++11
---

Returns a const iterator to the first element.

## Usage

```cpp
const_iterator cbegin() const;
```

Elements are iterated in ascending key order; elements with equivalent keys appear in insertion order. If the multimap is empty, the returned iterator equals `cend()`. Always returns a `const_iterator`, even on a non-const multimap, unlike `begin()`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <map>

std::multimap<int, int> numbers{{3, 30}, {1, 10}, {1, 20}};

auto it = numbers.cbegin();
assert(it->first == 1);
```
