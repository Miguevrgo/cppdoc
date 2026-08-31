---
symbol: std::list::crend
header: <list>
since: C++11
---

Returns a const reverse iterator to the element preceding the first element of the reversed list.

## Usage

```cpp
const_reverse_iterator crend() const noexcept;
```

Behaves like `rend() const`, but the result is always a `const_reverse_iterator`. The returned iterator acts only as a placeholder; dereferencing it is undefined behavior.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <list>

std::list<int> l{1, 2, 3};

auto it = l.crend();
--it;
assert(*it == 1);
```
