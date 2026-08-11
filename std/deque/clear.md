---
symbol: std::deque::clear
header: <deque>
since: C++98
---

Erases all elements from the deque.

## Usage

```cpp
void clear();
```

Erases all elements, invalidates all references, pointers, and iterators referring to contained elements. Every element is destroyed and every block is released. Final size is 0.

## Time complexity

Linear with the size of the deque.

## Examples

```cpp
#include <deque>
#include <cassert>

std::deque<int> values{1, 2, 3};
assert(values.size() == 3);
values.clear();
assert(values.size() == 0);
```
