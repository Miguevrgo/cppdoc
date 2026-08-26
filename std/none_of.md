---
symbol: std::none_of
header: <algorithm>
since: C++11
---

Checks if a unary predicate returns `true` for no elements in `[first, last)`.

## Usage

```cpp
template<class InputIt, class UnaryPred>
constexpr bool none_of(InputIt first, InputIt last, UnaryPred p); (1)

template<class ExecutionPolicy, class ForwardIt, class UnaryPred>
bool none_of(ExecutionPolicy&& policy,
             ForwardIt first, ForwardIt last, UnaryPred p); (2) [C++17]
```

Returns `true` if `p(*it)` returns `false` for every element in the range.

## Time complexity

Linear in the distance between `first` and `last`.

## Examples

```cpp
#include <algorithm>
#include <cassert>
#include <vector>

std::vector<int> v{1, 3, 5, 7};

bool no_even = std::none_of(v.begin(), v.end(), [](int n) { return n % 2 == 0; });
assert(no_even);
```
