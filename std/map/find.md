---
symbol: std::map::find
header: <map>
since: C++98
---

Finds an element with the key provided.

## Usage

```cpp
iterator find(const Key& key); (1)
const_iterator find(const Key& key) const; (2)
template<class K>
iterator find(const K& x); (3) [C++14]
template<class K>
const_iterator find(const K& x) const; (4) [C++14]
```

1, 2. Returns an iterator to an element with key equivalent to `key`, or `end()` if there is none.
3, 4. Same as (1, 2), but `x` can be of any type the map's comparator accepts, so no `Key` has to be built for the lookup. Only available if the comparator is transparent, like `std::less<>`.

## Time complexity

O(log n)

## Examples

```cpp
#include <cassert>
#include <map>

std::map<int, int> numbers{{1, 10}, {2, 20}};

auto it = numbers.find(1);
assert(it->second == 10);
assert(numbers.find(3) == numbers.end());
```
