---
symbol: std::forward_list::begin
header: <forward_list>
since: C++11
---

Returns an iterator to the first element of the list.

## Usage

```cpp
iterator begin();
const_iterator begin() const;
```

If the list is empty, the returned iterator equals `end()`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <forward_list>

std::forward_list<int> fl{1, 2, 3};

auto it = fl.begin();
assert(*it == 1);

const std::forward_list<int> cfl{4, 5};
assert(*cfl.begin() == 4);
```
