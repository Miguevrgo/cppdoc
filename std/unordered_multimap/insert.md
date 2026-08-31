---
symbol: std::unordered_multimap::insert
header: <unordered_map>
since: C++11
---

Inserts element(s) into the unordered_multimap.

## Usage

```cpp
iterator insert(value_type value); (1)
template<class InputIt>
void insert(InputIt first, InputIt last); (2)
```

1. Inserts `value` (duplicate keys allowed, unlike `unordered_map::insert`), returning an iterator to it.
2. Inserts copies of `[first, last)`. Hint-iterator, initializer-list and node-handle overloads also exist.

## Time complexity

O(1) per element on average; O(n) per element in the worst case (e.g. a rehash).

## Examples

```cpp
#include <cassert>
#include <string>
#include <unordered_map>

std::unordered_multimap<std::string, int> scores;
scores.insert({"Alice", 10}); // (1)
scores.insert({"Alice", 20}); // duplicate key, still inserted
assert(scores.size() == 2 && scores.count("Alice") == 2);
```
