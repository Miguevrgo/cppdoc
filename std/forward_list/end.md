---
symbol: std::forward_list::end
header: <forward_list>
since: C++11
---

Returns an iterator to the element following the last element of the list.

## Usage

```cpp
iterator end();
const_iterator end() const;
```

The returned iterator acts only as a placeholder; dereferencing it is undefined behavior. Because `forward_list` iterators are forward-only, `end()` cannot be decremented the way `std::list::end()` can.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <forward_list>

std::forward_list<int> fl{1, 2, 3};

int last = 0;
for (auto it = fl.begin(); it != fl.end(); ++it) last = *it;

assert(last == 3);
```
