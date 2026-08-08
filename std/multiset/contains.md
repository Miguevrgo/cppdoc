---
symbol: std::multiset::contains
header: <set>
since: C++20
---

Checks if the multiset contains an element with the `key` provided.

## Usage

```cpp
bool contains(const Key& key) const; (1)
template<class K>
bool contains(const K& x) const; (2)
```

1. Returns if there is an element with key equivalent to `key` in the set.
2. Returns if there is an element with key that compares equivalent to the value `x`.

## Time complexity

Logarithmic in the size of the set.

## Examples

```cpp
#include <cassert>
#include <set>

std::multiset<int> numbers{1, 1, 5, 7};

assert(numbers.contains(1));
assert(!numbers.contains(2));
```
