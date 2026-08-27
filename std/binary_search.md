---
symbol: std::binary_search
header: <algorithm>
since: C++98
---

Checks if an element equivalent to `value` exists in the partitioned range `[first, last)`.

## Usage

```cpp
template<class ForwardIt, class T>
bool binary_search(ForwardIt first, ForwardIt last, const T& value); (1)

template<class ForwardIt, class T, class Compare>
bool binary_search(ForwardIt first, ForwardIt last, const T& value, Compare comp); (2)
```

Returns `true` if an element equal to `value` is present in the sorted/partitioned range `[first, last)`, `false` otherwise. Takes the sorted state as an advantage to perform the search faster using binary partitions.

## Time complexity

Logarithmic in the distance between `first` and `last`: O(log N) comparisons.

## Examples

```cpp
#include <algorithm>
#include <cassert>
#include <vector>

std::vector<int> v{1, 2, 4, 8, 16, 32};

assert(std::binary_search(v.begin(), v.end(), 8));
assert(!std::binary_search(v.begin(), v.end(), 7));
```
