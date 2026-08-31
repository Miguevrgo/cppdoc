---
symbol: std::forward_list::push_front
header: <forward_list>
since: C++11
---

Prepends a copy of `value` to the beginning of the list.

## Usage

```cpp
void push_front(const T& value); (1)
void push_front(T&& value);      (2)
```

Prepends the given element `value` to the beginning of the list.

1. The new element is initialized as a copy of `value`.
2. The new element is moved.

## Exceptions

If an exception is thrown the function has no effect.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <forward_list>

std::forward_list<int> fl{2, 3};

fl.push_front(1);

assert(fl.front() == 1);
```
