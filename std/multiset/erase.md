---
symbol: std::multiset::erase
header: <set>
since: C++98
---

Removes specified elements from the multiset.

## Usage

```cpp
iterator erase(const_iterator pos); (1)
size_type erase(const Key& key); (2)
```

1. Removes the element at `pos`, returning an iterator to the next element.
2. Removes all elements with a key equivalent to `key`. Returns the count removed, which can exceed one. Range-erase and transparent-key overloads also exist.

## Time complexity

Amortized O(1) for (1); O(log(size()) + count(key)) for (2).

## Examples

```cpp
#include <cassert>
#include <set>

std::multiset<int> s{1, 1, 3};
s.erase(s.begin()); // (1), removes just one element
assert(s.size() == 2);

assert(s.erase(1) == 1); // (2), removes the remaining 1s
```
