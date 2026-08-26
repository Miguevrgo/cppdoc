---
symbol: std::lower_bound
header: <algorithm>
since: C++98
---

Returns an iterator pointing to the first element that is greater or equal than `value`.

## Usage

```cpp
template<class ForwardIt, class T>
ForwardIt lower_bound(ForwardIt first, ForwardIt last, const T& value); (1)

template<class ForwardIt, class T, class Compare>
ForwardIt lower_bound(ForwardIt first, ForwardIt last, const T& value, Compare comp); (2)
```

The range `[first, last)` must be partitioned (sorted) with respect to `value`.
Returns the first iterator `it` where `!(*it < value)` (or `!comp(*it, value)`). If all elements are less than `value`, returns `last`.

## Time complexity

Logarithmic in the distance between `first` and `last`: O(log N) comparisons.

## Examples

```cpp
#include <algorithm>
#include <cassert>
#include <vector>

std::vector<int> v{10, 20, 30, 30, 40, 50};

auto it1 = std::lower_bound(v.begin(), v.end(), 30);
assert(it1 - v.begin() == 2);

auto it2 = std::lower_bound(v.begin(), v.end(), 25);
assert(it2 - v.begin() == 2);

auto it3 = std::lower_bound(v.begin(), v.end(), 60);
assert(it3 == v.end());
```
