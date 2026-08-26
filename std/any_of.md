---
symbol: std::any_of
header: <algorithm>
since: C++11
---

Checks if a unary predicate returns `true` for at least one element in `[first, last)`.

## Usage

```cpp
template<class InputIt, class UnaryPred>
constexpr bool any_of(InputIt first, InputIt last, UnaryPred p); (1)

template<class ExecutionPolicy, class ForwardIt, class UnaryPred>
bool any_of(ExecutionPolicy&& policy,
            ForwardIt first, ForwardIt last, UnaryPred p); (2) [C++17]
```

Returns `true` if `p(*it)` returns `true` for at least one element in the range.

## Time complexity

Linear in the distance between `first` and `last`.

## Examples

```cpp
#include <algorithm>
#include <cassert>
#include <vector>

std::vector<int> v{1, 3, 5, 8};

bool has_even = std::any_of(v.begin(), v.end(), [](int n) { return n % 2 == 0; });
assert(has_even);
```
