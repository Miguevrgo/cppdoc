---
symbol: std::unordered_set::emplace
header: <unordered_set>
since: C++11
---

Constructs an element in-place, if an equivalent key does not already exist.

## Usage

```cpp
template<class... Args>
std::pair<iterator, bool> emplace(Args&&... args);
```

`args` are forwarded to the constructor of `value_type` (i.e. `Key`). Because the new element has to be compared against the existing keys before insertion can be decided, it may end up being constructed and then immediately destroyed if an equivalent key is already present. Returns an iterator to the inserted element, or to the existing one with the equivalent key, and a bool that is `true` only if the insertion happened.

## Time complexity

O(1) on average. Linear in the size of the unordered_set in the worst case.

## Examples

```cpp
#include <cassert>
#include <string>
#include <unordered_set>

std::unordered_set<std::string> s;

auto [it1, ok1] = s.emplace(3, 'x'); // constructs "xxx" in place
assert(ok1 && *it1 == "xxx");

auto [it2, ok2] = s.emplace(3, 'x'); // "xxx" already present
assert(!ok2 && it2 == it1);
assert(s.size() == 1);
```
