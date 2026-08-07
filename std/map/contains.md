---
symbol: std::map::contains
header: <map>
since: C++20
---

Checks if the map contains elements with the `key` provided.

## Usage

```cpp
bool contains(const Key& key) const; (1)
template<class K>
bool contains(const K& x) const; (2)
```

1. Returns if there is an element with key equivalent to `key` in the map.
2. Returns if there is an element with key that compares equivalent to the value `x`.

## Time complexity

Logarithmic in the size of the map.

## Examples

```cpp
#include <cassert>
#include <map>

std::map<int, int> numbers{{1, 2}, {3, 4}, {5, 6}, {7, 8}};

assert(numbers.contains(1));
assert(!numbers.contains(2));
```
