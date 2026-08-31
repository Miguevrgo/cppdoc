---
symbol: std::list::crbegin
header: <list>
since: C++11
---

Returns a const reverse iterator to the first element of the reversed list.

## Usage

```cpp
const_reverse_iterator crbegin() const noexcept;
```

Behaves like `rbegin() const`, but the result is always a `const_reverse_iterator`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <list>

std::list<int> l{1, 2, 3};

auto it = l.crbegin();
assert(*it == 3);
```
