---
symbol: std::map::operator[]
header: <map>
since: C++98
---

Accesses or inserts the element with the given key.

## Usage

```cpp
T& operator[](const Key& key); (1)
T& operator[](Key&& key); (2) [C++11]
template<class K>
T& operator[](K&& x); (3) [C++26]
```

Returns a reference to the mapped value corresponding to `key`.
If the key does not already exist, it is inserted into the map with a default-constructed value (`mapped_type()`).

## Time complexity

Logarithmic in the size of the container: O(log N).

## Examples

```cpp
#include <cassert>
#include <map>
#include <string>

std::map<std::string, int> m{};

m["counter"] += 1;
assert(m["counter"] == 1);

m["counter"] = 10;
assert(m["counter"] == 10);
```
