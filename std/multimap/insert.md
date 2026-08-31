---
symbol: std::multimap::insert
header: <map>
since: C++98
---

Inserts element(s) into the multimap.

## Usage

```cpp
iterator insert(value_type value); (1)
template<class InputIt>
void insert(InputIt first, InputIt last); (2)
```

1. Inserts `value` (duplicate keys allowed, unlike `map::insert`), returning an iterator to it.
2. Inserts copies of `[first, last)`. Hint-iterator, initializer-list and node-handle overloads also exist.

## Time complexity

O(log n) for (1); O(N log(size() + N)) for (2), where N is the number inserted.

## Examples

```cpp
#include <cassert>
#include <map>
#include <string>

std::multimap<std::string, int> ages;
auto it1 = ages.insert({"Alice", 30}); // (1)
auto it2 = ages.insert({"Alice", 40}); // (1), duplicate key, still inserted
assert(ages.size() == 2 && ages.count("Alice") == 2);
```
