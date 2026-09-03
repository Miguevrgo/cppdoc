---
symbol: std::partition
header: <algorithm>
since: C++98
---

Reorders the elements in the range `[first, last)` such that elements satisfying `p` precede elements that do not.

## Usage

```cpp
template<class ForwardIt, class UnaryPred>
ForwardIt partition(ForwardIt first, ForwardIt last, UnaryPred p); (1)

template<class ExecutionPolicy, class ForwardIt, class UnaryPred>
ForwardIt partition(ExecutionPolicy&& policy,
                    ForwardIt first, ForwardIt last, UnaryPred p); (2) [C++17]
```

Reorders elements so that all elements for which `p(*it)` is `true` come before elements for which it is `false`. Relative order among elements within each group is not preserved. Returns an iterator to the first element of the second group (elements for which `p` is `false`).

## Time complexity

1. Linear in the distance between `first` and `last`.
2. O(N log N) swaps and O(N) applications of `p`

## Examples

```cpp
#include <algorithm>
#include <cassert>
#include <vector>

std::vector<int> v{1, 2, 3, 4, 5, 6, 7, 8, 9};

auto it = std::partition(v.begin(), v.end(), [](int n) { return n % 2 == 0; });

for (auto i = v.begin(); i != it; ++i) {
    assert(*i % 2 == 0);
}
for (auto i = it; i != v.end(); ++i) {
    assert(*i % 2 != 0);
}
```
