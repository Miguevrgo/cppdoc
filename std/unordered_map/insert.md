---
symbol: std::unordered_map::insert
header: <unordered_map>
since: C++11
---

Inserts element(s) into the unordered_map, if the key does not already exist.

## Usage

```cpp
std::pair<iterator, bool> insert(value_type value); (1)
template<class InputIt>
void insert(InputIt first, InputIt last); (2)
```

1. Inserts `value`, returning an iterator to it (or to the element already holding that key) and whether insertion happened.
2. Inserts copies of `[first, last)`. Hint-iterator, initializer-list and node-handle overloads also exist.

## Time complexity

O(1) per element on average; O(n) per element in the worst case (e.g. a rehash).

## Examples

```cpp
#include <cassert>
#include <string>
#include <unordered_map>

std::unordered_map<std::string, int> ages;
auto [it1, ok1] = ages.insert({"Alice", 30}); // (1) inserted
auto [it2, ok2] = ages.insert({"Alice", 99}); // key already there, ignored
assert(ok1 && !ok2 && ages["Alice"] == 30);
```
