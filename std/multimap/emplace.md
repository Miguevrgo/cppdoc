---
symbol: std::multimap::emplace
header: <map>
since: C++11
---

Constructs an element in-place.

## Usage

```cpp
template<class... Args>
iterator emplace(Args&&... args);
```

Constructs a `value_type` from `args`, forwarded to its constructor, and inserts it. Since a multimap allows duplicate keys, this always succeeds and returns an iterator to the newly inserted element.

## Time complexity

O(log n)

## Examples

```cpp
#include <cassert>
#include <map>
#include <string>

std::multimap<int, std::string> names;

auto it1 = names.emplace(1, "Alice");
auto it2 = names.emplace(1, "Bob"); // key 1 already present, still inserted

assert(names.size() == 2);
assert(it1->second == "Alice");
assert(it2->second == "Bob");
assert(names.count(1) == 2);
```
