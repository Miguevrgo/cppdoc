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

- 1, 2. Returns an iterator to the element with key equivalent to `key`, or `end()` if there is none.
- 3, 4. Heterogeneous lookup: `x` can be of any type comparable to `Key` if the comparator is transparent (such as `std::less<>`), avoiding the need to construct a temporary `Key` object.

## Time complexity

Logarithmic in the size of the map: O(log N).

## Examples

```cpp
#include <cassert>
#include <map>
#include <string>

std::map<std::string, int> values{{"apple", 5}, {"banana", 2}};

auto it = values.find("apple");
assert(it->second == 5);
assert(values.find("cherry") == values.end());
```
