---
symbol: std::forward_list::remove
header: <forward_list>
since: C++11
---

Removes all elements equal to `value`.

## Usage

```cpp
void remove(const T& value);       (1) [C++11, until C++20]
size_type remove(const T& value);  (1) [C++20]
```

Erases every element comparing equal to `value` via `operator==`. Since C++20, returns the number removed.

## Time complexity

Linear in the number of elements.

## Examples

```cpp
// C++20: remove() returns the number of elements removed
#include <cassert>
#include <forward_list>

std::forward_list<int> fl{1, 2, 3, 2, 4, 2};

auto removed = fl.remove(2);

assert(removed == 3);
assert((fl == std::forward_list<int>{1, 3, 4}));
```
