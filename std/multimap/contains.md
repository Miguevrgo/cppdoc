---
symbol: std::multimap::contains
header: <map>
since: C++20
---

Checks if the multimap contains an element with the `key` provided.

## Usage

```cpp
bool contains(const Key& key) const; (1)
template<class K>
bool contains(const K& x) const; (2)
```

1. Returns `true` if there is an element with key equivalent to `key` in the multimap.
2. Returns `true` if there is an element with a key that compares equivalent to `x`, which can be of any type the multimap can compare against `Key`, so no `Key` has to be built for the lookup. Only available if the comparator is transparent, like `std::less<>`.

Use `count` instead when the number of matches matters, `contains` only says whether there is at least one.

## Time complexity

Logarithmic in the size of the multimap.

## Examples

```cpp
#include <map>
#include <string>
#include <cassert>

std::multimap<std::string, int> values{{"a", 1}, {"a", 2}, {"b", 3}};

assert(values.contains("a"));
assert(!values.contains("z"));
```
