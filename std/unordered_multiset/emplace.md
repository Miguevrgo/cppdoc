---
symbol: std::unordered_multiset::emplace
header: <unordered_set>
since: C++11
---

Constructs an element in-place and inserts it.

## Usage

```cpp
template<class... Args>
iterator emplace(Args&&... args);
```

`args` are forwarded to the constructor of `value_type` (i.e. `Key`). Unlike `unordered_set::emplace`, this always inserts, since equivalent keys are allowed. Returns an iterator to the newly inserted element.

## Time complexity

O(1) on average. Linear in the size of the unordered_multiset in the worst case.

## Examples

```cpp
#include <cassert>
#include <string>
#include <unordered_set>

std::unordered_multiset<std::string> s;

auto it1 = s.emplace(3, 'x'); // constructs "xxx" in place
auto it2 = s.emplace(3, 'x'); // "xxx" already present, still inserted

assert(it1 != it2);
assert(s.count("xxx") == 2);
```
