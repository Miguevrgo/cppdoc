---
symbol: std::multiset::begin
header: <set>
since: C++98
---

Returns an iterator to the first element.

## Usage

```cpp
iterator begin(); (1)
const_iterator begin() const; (2)
```

Because multiset elements are keys that must never be mutated in place, `iterator` only ever gives read access to the element, exactly like `const_iterator`. Elements are iterated in ascending order; elements that compare equal appear in insertion order. If the multiset is empty, the returned iterator equals `end()`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <set>

std::multiset<int> s{3, 1, 1, 2};

auto it = s.begin();
assert(*it == 1);
```
