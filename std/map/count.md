---
symbol: std::map::count
header: <map>
since: C++98
---

Returns the number of elements with an equivalent key to the one provided.

## Usage

```cpp
size_type count(const Key& key) const; (1)
template<class K>
size_type count(const K& x) const; (2) [C++14]
```

1. Returns the number of elements with key `key`. This is either 0 or 1 as this container does not allow duplicates.
2. Returns the number of elements with a key that compares equivalent to `x`, which can be of any type the map's comparator accepts, so no `Key` has to be built for the lookup. Only available if the comparator is transparent, like `std::less<>`.

## Time complexity

Logarithmic in the size of the container plus linear in the number of elements found.

## Examples

```cpp
#include <cassert>
#include <map>

std::map<int, int> numbers{{1, 2}, {3, 4}, {5, 6}, {7, 8}};

assert(numbers.count(1) == 1);
assert(numbers.count(2) == 0);
```
