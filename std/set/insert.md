---
symbol: std::set::insert
header: <set>
since: C++98
---

Inserts element(s) into the set, if an equivalent key does not already exist.

## Usage

```cpp
std::pair<iterator, bool> insert(value_type value); (1)
template<class InputIt>
void insert(InputIt first, InputIt last); (2)
```

1. Inserts `value`, returning an iterator to it (or to the existing element) and whether insertion happened.
2. Inserts copies of `[first, last)`. Hint-iterator, initializer-list and node-handle overloads also exist.

## Time complexity

O(log n) for (1); O(N log(size() + N)) for (2), where N is the number inserted.

## Examples

```cpp
#include <cassert>
#include <set>

std::set<int> s;
auto [it1, ok1] = s.insert(5); // inserted
auto [it2, ok2] = s.insert(5); // key already there, ignored

assert(ok1 && !ok2 && it1 == it2);
```
