---
symbol: std::list::emplace
header: <list>
since: C++11
---

Constructs an element in place before the specified position.

## Usage

```cpp
template<class... Args>
iterator emplace(const_iterator pos, Args&&... args);
```

Constructs the new element directly in a node using the arguments `args...` forwarded to `T`'s constructor, avoiding any temporary object. Returns an iterator to the new element.

## Exceptions

If an exception is thrown, this function has no effect (strong exception guarantee).

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <list>
#include <utility>

std::list<std::pair<int, int>> l{{1, 1}};

auto it = l.emplace(l.end(), 2, 2);

assert((*it == std::pair<int, int>{2, 2}));
assert(l.size() == 2);
```
