---
symbol: std::unordered_multimap::find
header: <unordered_map>
since: C++11
---

Finds an element with the key provided.

## Usage

```cpp
iterator find(const Key& key); (1)
const_iterator find(const Key& key) const; (2)
template<class K>
iterator find(const K& x); (3) [C++20]
template<class K>
const_iterator find(const K& x) const; (4) [C++20]
```

1, 2. Returns an iterator to an element with key equivalent to `key`, or `end()` if there is none. If several elements share that key, any one of them may be returned; use `equal_range` to get all of them.
3, 4. Same as (1, 2), but `x` can be of any type the unordered_multimap can compare against `Key`, so no `Key` has to be built for the lookup. Only available if both the hash and the equality predicate are transparent, which the default `std::hash` and `std::equal_to<Key>` are not.

## Time complexity

O(1) on average. Linear in the size of the unordered_multimap in the worst case.

## Examples

```cpp
#include <unordered_map>
#include <string>
#include <cassert>

std::unordered_multimap<std::string, int> values{{"a", 1}, {"a", 2}, {"b", 3}};

auto it = values.find("a");
assert(it != values.end());
assert(it->first == "a");
assert(values.find("z") == values.end());
```
