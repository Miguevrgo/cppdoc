---
symbol: std::forward_list::cend
header: <forward_list>
since: C++11
---

Returns a const iterator to the element following the last element of the list.

## Usage

```cpp
const_iterator cend() const noexcept;
```

Behaves like `end() const`, but the result is always a `const_iterator`. The returned iterator acts only as a placeholder; dereferencing it is undefined behavior.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <forward_list>

std::forward_list<int> fl{1, 2, 3};

int count = 0;
for (auto it = fl.cbegin(); it != fl.cend(); ++it) ++count;

assert(count == 3);
```
