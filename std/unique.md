---
symbol: std::unique
header: <algorithm>
since: C++98
---

Removes all consecutive duplicate elements from the range `[first, last)`.

## Usage

```cpp
template<class ForwardIt>
ForwardIt unique(ForwardIt first, ForwardIt last); (1)

template<class ForwardIt, class BinaryPred>
ForwardIt unique(ForwardIt first, ForwardIt last, BinaryPred p); (2)

template<class ExecutionPolicy, class ForwardIt>
ForwardIt unique(ExecutionPolicy&& policy,
                 ForwardIt first, ForwardIt last);
```

1. Eliminates consecutive duplicate elements using `operator==`.
2. Eliminates consecutive duplicate elements using the binary predicate `p`.
3. Same as 1,2 but executed according to policy

Returns a past-the-end iterator for the new range.

## Time complexity

Linear with the distance between `first` and `last`.

## Examples

```cpp
#include <algorithm>
#include <cassert>
#include <vector>

std::vector<int> v{1, 1, 2, 3, 3, 3, 4, 2, 2};

auto it = std::unique(v.begin(), v.end());
v.erase(it, v.end());

assert((v == std::vector<int>{1, 2, 3, 4, 2}));
```
