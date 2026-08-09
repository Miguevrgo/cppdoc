---
symbol: std::set::contains
header: <set>
since: C++20
---

Checks if the set contains an element with the `key` provided.

## Usage

```cpp
bool contains(const Key& key) const; (1)
template<class K>
bool contains(const K& x) const; (2)
```

1. Returns `true` if there is an element with key equivalent to `key` in the set.
2. Returns `true` if there is an element with a key that compares equivalent to `x`, which can be of any type the set's comparator accepts, so no `Key` has to be built for the lookup. Only available if the comparator is transparent, like `std::less<>`.

## Time complexity

Logarithmic in the size of the set.

## Examples

```cpp
#include <cassert>
#include <set>

std::set<int> numbers{1, 3, 5, 7};

assert(numbers.contains(1));
assert(!numbers.contains(2));
```
