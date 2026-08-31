---
symbol: std::set::emplace_hint
header: <set>
since: C++11
---

Constructs an element in-place using a hint about where it should be inserted.

## Usage

```cpp
template<class... Args>
iterator emplace_hint(const_iterator hint, Args&&... args);
```

Same as `emplace`, except that `hint` is used as a suggestion of where the search should start. If the insertion happens right after `hint`, the operation runs in amortized constant time instead of logarithmic time. If an equivalent key already exists, nothing is inserted. Returns an iterator to the inserted element, or to the existing one with the equivalent key.

## Time complexity

Amortized O(1) if the insertion happens right next to `hint`, O(log n) otherwise.

## Examples

```cpp
#include <cassert>
#include <set>

std::set<int> s{1, 2, 4};

auto it = s.emplace_hint(s.find(4), 3); // 3 belongs right before 4
assert(*it == 3);
assert((s == std::set<int>{1, 2, 3, 4}));
```
