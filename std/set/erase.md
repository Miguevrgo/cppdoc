---
symbol: std::set::erase
header: <set>
since: C++98
---

Removes specified elements from the set.

## Usage

```cpp
iterator erase(const_iterator pos); (1)
size_type erase(const Key& key); (2)
```

1. Removes the element at `pos`, returning an iterator to the next element.
2. Removes the element with a key equivalent to `key`, if any. Returns the count removed. Range-erase and transparent-key overloads also exist.

## Time complexity

Amortized O(1) for (1); O(log n) for (2).

## Examples

```cpp
#include <cassert>
#include <set>

std::set<int> s{1, 3, 5, 7};
s.erase(s.begin());
assert((s == std::set<int>{3, 5, 7}));

assert(s.erase(5) == 1);
assert(s.erase(99) == 0);
```
