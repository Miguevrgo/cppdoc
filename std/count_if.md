---
symbol: std::count_if
header: <algorithm>
since: C++98
---

Returns the number of elements in the range `[first, last)` that satisfy the predicate `p`.

## Usage

```cpp
template<class InputIt, class UnaryPred>
typename iterator_traits<InputIt>::difference_type
count_if(InputIt first, InputIt last, UnaryPred p); (1)

template<class ExecutionPolicy, class ForwardIt, class UnaryPred>
typename iterator_traits<ForwardIt>::difference_type
count_if(ExecutionPolicy&& policy,
         ForwardIt first, ForwardIt last, UnaryPred p); (2) [C++17]
```

Counts the number of elements in `[first, last)` for which `p(*it)` returns `true`.

## Time complexity

Linear in the distance between `first` and `last`. Exactly `last - first` applications of `p`.

## Examples

```cpp
#include <algorithm>
#include <cassert>
#include <vector>

std::vector<int> v{1, 2, 3, 4, 5, 6};

auto evens = std::count_if(v.begin(), v.end(), [](int n) { return n % 2 == 0; });
assert(evens == 3);
```
