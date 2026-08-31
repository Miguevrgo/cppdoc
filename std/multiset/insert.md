---
symbol: std::multiset::insert
header: <set>
since: C++98
---

Inserts element(s) into the multiset.

## Usage

```cpp
iterator insert(value_type value); (1)
template<class InputIt>
void insert(InputIt first, InputIt last); (2)
```

1. Inserts `value` (duplicates allowed, unlike `set::insert`), returning an iterator to it.
2. Inserts copies of `[first, last)`. Hint-iterator, initializer-list and node-handle overloads also exist.

## Time complexity

O(log n) for (1); O(N log(size() + N)) for (2), where N is the number inserted.

## Examples

```cpp
#include <cassert>
#include <set>

std::multiset<int> s;
auto it1 = s.insert(5); // (1)
auto it2 = s.insert(5); // (1), duplicate, still inserted

assert(s.size() == 2 && s.count(5) == 2);
```
