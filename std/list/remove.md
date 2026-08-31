---
symbol: std::list::remove
header: <list>
since: C++98
---

Removes all elements equal to `value`.

## Usage

```cpp
void remove(const T& value);       (1) [C++98, until C++20]
size_type remove(const T& value);  (1) [C++20]
```

Erases every element comparing equal to `value` via `operator==`. Since C++20, returns the number removed.

## Time complexity

Exactly `size()` comparisons.

## Examples

```cpp
// C++20: remove() returns the number of elements removed
#include <cassert>
#include <list>

std::list<int> l{1, 2, 3, 2, 4, 2};

auto removed = l.remove(2);

assert(removed == 3);
assert((l == std::list<int>{1, 3, 4}));
```
