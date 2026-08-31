---
symbol: std::forward_list::before_begin
header: <forward_list>
since: C++11
---

Returns an iterator to the element preceding the first element of the list.

## Usage

```cpp
iterator before_begin();
const_iterator before_begin() const;
```

Dereferencing the returned iterator is undefined behavior; it exists only to be passed as the position argument to `insert_after`, `erase_after`, `emplace_after`, or `splice_after` when the target is the very front of the list. `++before_begin()` equals `begin()`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <forward_list>

std::forward_list<int> fl{2, 3};

fl.insert_after(fl.before_begin(), 1); // insert at the front

assert((fl == std::forward_list<int>{1, 2, 3}));
```
