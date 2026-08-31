---
symbol: std::list::cend
header: <list>
since: C++11
---

Returns a const iterator to the element following the last element of the list.

## Usage

```cpp
const_iterator cend() const noexcept;
```

Behaves like `end() const`, but the result is always a `const_iterator`. The returned iterator acts only as a placeholder; dereferencing it is undefined behavior.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <list>

std::list<int> l{1, 2, 3};

auto it = l.cend();
--it;
assert(*it == 3);
```
