---
symbol: std::list::push_front
header: <list>
since: C++98
---

Appends a copy of `value` to the beginning of the list.

## Usage

```cpp
void push_front(const T& value); (1)
void push_front(T&& value); (2) [C++11]
```

Appends the given element `value` to the beginning of the list.

1. The new element is initialized as a copy of `value`.
2. The new element is moved.

## Exceptions

If an exception is thrown the function has no effect.

## Time complexity

O(1)

## Examples

```cpp
#include <list>
#include <cassert>

std::list<int> values{2, 3};

values.push_front(1);

assert(values.front() == 1);
assert(values.size() == 3);
```
