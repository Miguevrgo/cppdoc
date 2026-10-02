---
symbol: std::set::find
header: <set>
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

1, 2. Returns an iterator to the element with key equivalent to `key`, or `end()` if no such element is found.
3, 4. Heterogeneous lookup: `x` can be of any type comparable to `Key` if the comparator is transparent (such as `std::less<>`).

## Time complexity

Logarithmic in the size of the set: O(log N).

## Examples

```cpp
#include <cassert>
#include <set>
#include <string>

std::set<std::string> s{"apple", "banana"};

auto it = s.find("apple");
assert(it != s.end() && *it == "apple");
assert(s.find("cherry") == s.end());
```
