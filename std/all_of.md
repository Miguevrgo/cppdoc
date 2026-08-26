---
symbol: std::all_of
header: <algorithm>
since: C++11
---

Checks if a unary predicate returns `true` for all elements in the range `[first, last)`.

## Usage

```cpp
template<class InputIt, class UnaryPred>
constexpr bool all_of(InputIt first, InputIt last, UnaryPred p); (1)

template<class ExecutionPolicy, class ForwardIt, class UnaryPred>
bool all_of(ExecutionPolicy&& policy,
            ForwardIt first, ForwardIt last, UnaryPred p); (2) [C++17]
```

Returns `true` if `p(*it)` returns `true` for every element in the range.

## Time complexity

Linear in the distance between `first` and `last`. At most `last - first` applications of `p`.

## Examples

```cpp
#include <algorithm>
#include <cassert>
#include <vector>

std::vector<int> v{2, 4, 6, 8};

bool all_even = std::all_of(v.begin(), v.end(), [](int n) { return n % 2 == 0; });
assert(all_even);

std::vector<int> empty;
assert(std::all_of(empty.begin(), empty.end(), [](int n) { return n > 0; }));
```
