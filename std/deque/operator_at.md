---
symbol: std::deque::operator[]
header: <deque>
since: C++98
---

Accesses the element at `pos` without bounds checking.

## Usage

```cpp
reference operator[](size_type pos); (1)
const_reference operator[](size_type pos) const; (2)
```

Returns a reference to the element at `pos`. Unlike `at`, no bounds checking is performed: calling this with `pos >= size()` is undefined behavior.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <deque>

std::deque<int> values{1, 2, 3};

assert(values[0] == 1);
values[1] = 20;
assert(values[1] == 20);
```
