---
symbol: std::multiset::count
header: <set>
since: C++98
---

Returns the number of elements with an equivalent key to the one provided.

## Usage

```cpp
size_type count(const Key& key) const; (1)
template<class K>
size_type count(const K& x) const; (2) [C++14]
```

1. Returns the number of elements with key `key`.
2. Returns the number of elements with a key that compares equivalent to `x`, which can be of any type the multiset's comparator accepts, so no `Key` has to be built for the lookup. Only available if the comparator is transparent, like `std::less<>`.

## Time complexity

Logarithmic in the size of the multiset plus linear in the number of elements found.

## Examples

```cpp
#include <cassert>
#include <set>

std::multiset<int> numbers{1, 1, 3, 4};

assert(numbers.count(1) == 2);
assert(numbers.count(5) == 0);
```
