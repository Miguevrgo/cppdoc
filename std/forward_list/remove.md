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

Erases every element that compares equal to `value` via `operator==`. Since C++20, returns the number of elements removed.

## Time complexity

Exactly linear in the number of elements: one comparison per element.

## Examples

```cpp
#include <cassert>
#include <forward_list>

std::forward_list<int> fl{1, 2, 3, 2, 4, 2};

fl.remove(2);

assert((fl == std::forward_list<int>{1, 3, 4}));
```

```cpp
// C++20: remove() reports how many elements were removed
#include <cassert>
#include <forward_list>

std::forward_list<int> fl{1, 2, 3, 2};

auto removed = fl.remove(2);

assert(removed == 2);
assert((fl == std::forward_list<int>{1, 3}));
```
