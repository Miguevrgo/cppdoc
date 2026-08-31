---
symbol: std::forward_list::swap
header: <forward_list>
since: C++11
---

Exchanges the contents of the list with those of `other`.

## Usage

```cpp
void swap(forward_list& other);
```

All iterators and references remain valid, but now refer to the same element inside the other list. `before_begin()` and `end()` obtained before the call must not be used on the other list afterwards. Only bookkeeping pointers are exchanged, not the elements themselves.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <forward_list>

std::forward_list<int> a{1, 2, 3};
std::forward_list<int> b;

a.swap(b);

assert(a.empty());
assert(b.front() == 1);
```
