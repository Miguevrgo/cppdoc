---
symbol: std::list::cbegin
header: <list>
since: C++11
---

Returns a const iterator to the first element of the list.

## Usage

```cpp
const_iterator cbegin() const noexcept;
```

Behaves like `begin() const`, but the result is always a `const_iterator` regardless of the constness of the list it is called on. Useful with `auto` to force a const iterator.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <list>

std::list<int> l{1, 2, 3};

auto it = l.cbegin();
assert(*it == 1);
static_assert(std::is_same_v<decltype(it), std::list<int>::const_iterator>);
```
