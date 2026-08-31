---
symbol: std::map::emplace_hint
header: <map>
since: C++11
---

Constructs an element in-place using a hint for where to search, if the key does not already exist.

## Usage

```cpp
template<class... Args>
iterator emplace_hint(const_iterator hint, Args&&... args);
```

Same as `emplace`, but the search for the insertion point starts at `hint` instead of the root. If `hint` is the position that immediately precedes where the element would go, the insertion is amortized constant time instead of logarithmic. Returns an iterator to the inserted element or to the one already holding that key.

The element may be constructed even if it ends up not being inserted, but it is destroyed in that case.

## Time complexity

Amortized O(1) if the element is inserted right next to `hint`, O(log n) otherwise.

## Examples

```cpp
#include <cassert>
#include <map>
#include <string>

std::map<int, std::string> names;

auto it = names.emplace_hint(names.end(), 1, "Alice");
names.emplace_hint(it, 2, "Bob"); // 2 goes right after 1, so this is O(1)

assert(names.size() == 2);
assert((names == std::map<int, std::string>{{1, "Alice"}, {2, "Bob"}}));
```
