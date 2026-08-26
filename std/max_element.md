---
symbol: std::max_element
header: <algorithm>
since: C++98
---

Finds the largest element in the range `[first, last)`.

## Usage

```cpp
template<class ForwardIt>
ForwardIt max_element(ForwardIt first, ForwardIt last); (1)

template<class ForwardIt, class Compare>
ForwardIt max_element(ForwardIt first, ForwardIt last, Compare comp); (2)
```

Returns an iterator to the first occurrence of the largest element in `[first, last)`. If the range is empty, returns `last`.

## Time complexity

Linear in the distance between `first` and `last`: exactly `max(last - first - 1, 0)` comparisons.

## Examples

```cpp
#include <algorithm>
#include <cassert>
#include <vector>

std::vector<int> v{3, 1, 4, 1, 5, 9, 9};

auto it = std::max_element(v.begin(), v.end());
assert(*it == 9);
assert(it - v.begin() == 5);
```
