---
symbol: std::unordered_multimap::emplace
header: <unordered_map>
since: C++11
---

Constructs an element in-place and inserts it.

## Usage

```cpp
template<class... Args>
iterator emplace(Args&&... args);
```

Constructs a `value_type` (i.e. `std::pair<const Key, T>`) from `args`, forwarded to its constructor, and inserts it. Unlike `unordered_map::emplace`, this always inserts, since duplicate keys are allowed. Returns an iterator to the newly inserted element.

## Time complexity

O(1) on average. Linear in the size of the unordered_multimap in the worst case.

## Examples

```cpp
#include <cassert>
#include <string>
#include <unordered_map>

std::unordered_multimap<int, std::string> names;

auto it1 = names.emplace(1, "Alice");
auto it2 = names.emplace(1, "Bob"); // duplicate key, still inserted

assert(it1 != it2);
assert(names.count(1) == 2);
```
