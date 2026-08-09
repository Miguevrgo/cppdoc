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

1. Returns `true` if there is an element with key equivalent to `key` in the multiset.
2. Returns `true` if there is an element with a key that compares equivalent to `x`, which can be of any type the multiset's comparator accepts, so no `Key` has to be built for the lookup. Only available if the comparator is transparent, like `std::less<>`.

## Time complexity

Logarithmic in the size of the multiset.

## Examples

```cpp
#include <cassert>
#include <set>

std::multiset<int> numbers{1, 1, 5, 7};

assert(numbers.contains(1));
assert(!numbers.contains(2));
```
