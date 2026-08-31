---
symbol: std::set::begin
header: <set>
since: C++98
---

Returns an iterator to the first element of the set.

## Usage

```cpp
iterator begin(); (1) [C++98, until C++11]
iterator begin() noexcept; (1) [C++11]
const_iterator begin() const; (2) [C++98, until C++11]
const_iterator begin() const noexcept; (2) [C++11]
```

1. Called on a non-const set. Because set elements are keys that must never be mutated in place, `iterator` only ever gives read access to the element, exactly like `const_iterator`.
2. Called on a const set, or explicitly requested via `cbegin()`.

If the set is empty, the returned iterator equals `end()`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <set>

std::set<int> s{3, 1, 2};

auto it = s.begin();
assert(*it == 1); // elements are visited in sorted order
```
