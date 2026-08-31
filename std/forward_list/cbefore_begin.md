---
symbol: std::forward_list::cbefore_begin
header: <forward_list>
since: C++11
---

Returns a const iterator to the element preceding the first element of the list.

## Usage

```cpp
const_iterator cbefore_begin() const noexcept;
```

Behaves like `before_begin() const`, but the result is always a `const_iterator`. Dereferencing it is undefined behavior; it exists to be passed as a position to `insert_after`, `erase_after`, `emplace_after`, or `splice_after`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <forward_list>

std::forward_list<int> fl{2, 3};

fl.emplace_after(fl.cbefore_begin(), 1); // construct at the front

assert((fl == std::forward_list<int>{1, 2, 3}));
```
