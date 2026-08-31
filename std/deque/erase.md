---
symbol: std::deque::erase
header: <deque>
since: C++98
---

Erases the specified element(s) from the deque.

## Usage

```cpp
iterator erase(iterator pos); (1) [C++98, until C++11]
iterator erase(const_iterator pos); (1) [C++11]
iterator erase(iterator first, iterator last); (2) [C++98, until C++11]
iterator erase(const_iterator first, const_iterator last); (2) [C++11]
```

1. Removes the element at `pos`.
2. Removes the elements in the range `[first, last)`.

Returns an iterator to the element following the last removed element, or `end()` if there is none. If the erased element(s) are at the front or back of the deque, only iterators and references to the erased elements (and `end()`) are invalidated; otherwise all iterators and references to the deque are invalidated.

## Time complexity

Linear in the distance between the erased element(s) and the nearer of `begin()` or `end()`.

## Examples

```cpp
#include <cassert>
#include <deque>

std::deque<int> values{1, 2, 3, 4, 5};

auto it = values.erase(values.begin() + 1); // removes 2
assert(*it == 3);
assert((values == std::deque<int>{1, 3, 4, 5}));
```

```cpp
#include <cassert>
#include <deque>

std::deque<int> values{1, 2, 3, 4, 5, 6};

values.erase(values.begin() + 1, values.begin() + 4); // removes 2, 3, 4

assert((values == std::deque<int>{1, 5, 6}));
```
