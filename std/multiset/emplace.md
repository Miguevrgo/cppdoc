---
symbol: std::multiset::emplace
header: <set>
since: C++11
---

Constructs an element in-place from the given arguments.

## Usage

```cpp
template<class... Args>
iterator emplace(Args&&... args);
```

`args` are forwarded to the constructor of `value_type` (i.e. `Key`). Since a multiset allows equivalent keys, insertion always succeeds and returns an iterator to the newly inserted element.

## Time complexity

O(log n)

## Examples

```cpp
#include <cassert>
#include <set>
#include <string>

std::multiset<std::string> s;

auto it1 = s.emplace(3, 'x'); // constructs "xxx" in place
auto it2 = s.emplace(3, 'x'); // "xxx" already present, still inserted

assert(*it1 == "xxx" && *it2 == "xxx");
assert(s.size() == 2);
assert(s.count("xxx") == 2);
```
