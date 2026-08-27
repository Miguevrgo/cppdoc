---
symbol: std::copy_if
header: <algorithm>
since: C++11
---

Copies elements in the range `[first, last)` that satisfy the predicate `p` to another range.

## Usage

```cpp
template<class InputIt, class OutputIt, class UnaryPred>
OutputIt copy_if(InputIt first, InputIt last, OutputIt d_first, UnaryPred p); (1)

template<class ExecutionPolicy, class ForwardIt1, class ForwardIt2, class UnaryPred>
ForwardIt2 copy_if(ExecutionPolicy&& policy,
                   ForwardIt1 first, ForwardIt1 last,
                   ForwardIt2 d_first, UnaryPred p); (2) [C++17]
```

Copies only the elements for which `p(*it)` returns `true` into `d_first`.
Returns the output iterator pointing to the element past the last element copied.

## Time complexity

Linear in the distance between `first` and `last`. Exactly `last - first` applications of `p`.

## Examples

```cpp
#include <algorithm>
#include <cassert>
#include <vector>

std::vector<int> src{1, 2, 3, 4, 5, 6};
std::vector<int> evens;

std::copy_if(src.begin(), src.end(), std::back_inserter(evens), [](int n) {
    return n % 2 == 0;
});

assert((evens == std::vector<int>{2, 4, 6}));
```
