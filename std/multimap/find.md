---
symbol: std::multimap::find
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

- 1, 2. Returns an iterator to an element with key equivalent to `key`, or `end()` if there is none. Any of them may be returned.
- 3, 4. Same as (1, 2), but `x` can be of any type the multimap can compare against `Key`, so no `Key` has to be built for the lookup. Only available if the comparator is transparent, like `std::less<>`.

## Time complexity

Logarithmic in the size of the multimap.

## Examples

```cpp
#include <map>
#include <string>
#include <cassert>

std::multimap<std::string, int> values{{"a", 1}, {"a", 2}, {"b", 3}};

auto it = values.find("a");
assert(it->second == 1);
assert(values.find("z") == values.end());
```
