---
symbol: std::unordered_map::emplace
header: <unordered_map>
since: C++11
---

Constructs an element in-place, if the key does not already exist.

## Usage

```cpp
template<class... Args>
std::pair<iterator, bool> emplace(Args&&... args);
```

Constructs a `value_type` (i.e. `std::pair<const Key, T>`) from `args`, forwarded to its constructor, and inserts it unless an element with an equivalent key already exists, in which case the constructed element is discarded. Returns an iterator to the inserted element or to the one already holding that key, and a bool that is `true` only if the insertion happened.

The element may be constructed even if it ends up not being inserted, but it is destroyed in that case.

## Time complexity

O(1) on average. Linear in the size of the unordered_map in the worst case.

## Examples

```cpp
#include <cassert>
#include <string>
#include <unordered_map>

std::unordered_map<int, std::string> names;

auto [it1, ok1] = names.emplace(1, "Alice");
auto [it2, ok2] = names.emplace(1, "Bob"); // key 1 already present, discarded

assert(ok1 && !ok2);
assert(names.at(1) == "Alice");
```
