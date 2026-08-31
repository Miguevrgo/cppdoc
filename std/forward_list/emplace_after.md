---
symbol: std::forward_list::emplace_after
header: <forward_list>
since: C++11
---

Constructs an element in place immediately after the specified position.

## Usage

```cpp
template<class... Args>
iterator emplace_after(const_iterator pos, Args&&... args);
```

Constructs the new element directly in a node placed right after `pos`, using the arguments `args...` forwarded to `T`'s constructor, avoiding any temporary object. `pos` may be `before_begin()`/`cbefore_begin()`. Returns an iterator to the newly constructed element.

## Exceptions

If an exception is thrown, this function has no effect (strong exception guarantee).

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <forward_list>
#include <utility>

std::forward_list<std::pair<int, int>> fl{{1, 1}};

auto it = fl.emplace_after(fl.begin(), 2, 2);

assert((*it == std::pair<int, int>{2, 2}));
assert((*++fl.begin() == std::pair<int, int>{2, 2}));
```
