---
symbol: std::find_if
header: <algorithm>
since: C++98
---

Finds the first element in the range `[first, last)` satisfying the predicate `p`.

## Usage

```cpp
template<class InputIt, class UnaryPred>
InputIt find_if(InputIt first, InputIt last, UnaryPred p); (1)

template<class ExecutionPolicy, class ForwardIt, class UnaryPred>
ForwardIt find_if(ExecutionPolicy&& policy,
                  ForwardIt first, ForwardIt last, UnaryPred p); (2)
```

1. Returns the first iterator `it` in `[first, last)` for which `p(*it)` evaluates to `true`. Returns `last` if no element matches.
2. Same as (1), executed according to `policy`.

## Time complexity

Linear in the distance between `first` and `last`. At most `last - first` applications of the predicate `p`.

## Examples

```cpp
#include <algorithm>
#include <cassert>
#include <vector>

std::vector<int> v{1, 3, 5, 8, 9};

auto it = std::find_if(v.begin(), v.end(), [](int n) { return n % 2 == 0; });
assert(*it == 8);
```
