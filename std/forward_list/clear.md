---
symbol: std::forward_list::clear
header: <forward_list>
since: C++11
---

Erases all elements from the list.

## Usage

```cpp
void clear();
```

Erases all elements, invalidates all references, pointers, and iterators referring to contained elements. `before_begin()`/`cbefore_begin()` remain valid. The list is empty after the call.

## Time complexity

Linear in the number of elements.

## Examples

```cpp
#include <cassert>
#include <forward_list>

std::forward_list<int> fl{1, 2, 3};
assert(!fl.empty());

fl.clear();

assert(fl.empty());
```
