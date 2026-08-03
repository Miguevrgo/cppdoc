---
symbol: std::vector::insert_range
header: <vector>
since: C++23
---

Inserts, in non-reversing order copies of elements in `rg` before `pos`.

## Usage

```cpp
template<container-compatible-range<T> R>
constexpr iterator insert_range(const_iterator pos, R&& rg);
```

Inserts a copy of the elements in the range, if after the operation the new size is greater than the old capacity, a reallocation takes place, which invalidates all iterators as well as references to the elements.

## Examples

```cpp
#include <algorithm>
#include <cassert>
#include <iterator>
#include <vector>
#include <list>

std::vector vec{1, 2, 3, 4};
auto pos = std::next(container.begin());
assert(*pos == 2);
const auto rg = std::list{-1, -2, -3};
container.insert_range(pos, rg);
assert(std::ranges::equal(container, std::vector{1, -1, -2, -3, 2, 3, 4}));
```
