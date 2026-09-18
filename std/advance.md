---
symbol: std::advance
header: <iterator>
since: C++98
---

Advances an iterator by `n` element positions.

## Usage

```cpp
template<class InputIt, class Distance>
constexpr void advance(InputIt& it, Distance n);
```

Increments the iterator `it` by `n` positions. If `n` is negative, `it` is decremented. Unlike `std::next` `std::advance` modifies the iterator.

## Examples

```cpp
#include <cassert>
#include <iterator>
#include <list>

std::list<int> l{10, 20, 30, 40};

auto it = l.begin();
std::advance(it, 2);
assert(*it == 30);

std::advance(it, -1);
assert(*it == 20);
```
