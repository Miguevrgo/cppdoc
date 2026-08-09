---
symbol: std::multimap::count
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

1. Returns the number of elements with key `key`, which for multimap can be any number.
2. Returns the number of elements with a key that compares equivalent to `x`, which can be of any type the multimap can compare against `Key`, so no `Key` has to be built for the lookup. Only available if the comparator is transparent, like `std::less<>`.

## Time complexity

Logarithmic in the size of the multimap plus linear in the number of elements found.

## Examples

```cpp
#include <map>
#include <string>
#include <cassert>

std::multimap<std::string, int> values{{"a", 1}, {"a", 2}, {"b", 3}};

assert(values.count("a") == 2);
assert(values.count("z") == 0);
```
