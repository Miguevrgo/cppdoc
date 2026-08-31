---
symbol: std::unordered_set::insert
header: <unordered_set>
since: C++11
---

Inserts element(s) into the unordered_set, if an equivalent key does not already exist.

## Usage

```cpp
std::pair<iterator, bool> insert(value_type value); (1)
template<class InputIt>
void insert(InputIt first, InputIt last); (2)
```

1. Inserts `value`, returning an iterator to it (or to the existing element) and whether insertion happened.
2. Inserts copies of `[first, last)`. Hint-iterator, initializer-list and node-handle overloads also exist.

## Time complexity

O(1) per element on average; O(n) per element in the worst case (e.g. a rehash).

## Examples

```cpp
#include <cassert>
#include <unordered_set>

std::unordered_set<int> s;
auto [it1, ok1] = s.insert(5); // inserted
auto [it2, ok2] = s.insert(5); // key already there, ignored

assert(ok1 && !ok2 && it1 == it2);
```
