---
symbol: std::unordered_multiset::insert
header: <unordered_set>
since: C++11
---

Inserts element(s) into the unordered_multiset.

## Usage

```cpp
iterator insert(value_type value); (1)
template<class InputIt>
void insert(InputIt first, InputIt last); (2)
```

1. Inserts `value` (duplicates allowed, unlike `unordered_set::insert`), returning an iterator to it.
2. Inserts copies of `[first, last)`. Hint-iterator, initializer-list and node-handle overloads also exist.

## Time complexity

O(1) per element on average; O(n) per element in the worst case (e.g. a rehash).

## Examples

```cpp
#include <cassert>
#include <unordered_set>

std::unordered_multiset<int> s;
s.insert(5); // (1)
s.insert(5); // duplicate, still inserted

assert(s.size() == 2 && s.count(5) == 2);
```
