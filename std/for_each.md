---
symbol: std::for_each
header: <algorithm>
since: C++98
---

Applies the given function object `f` to each element in range `[first, last)`.

## Usage

```cpp
template<class InputIt, class UnaryFunction>
UnaryFunction for_each(InputIt first, InputIt last, UnaryFunction f); (1)

template<class ExecutionPolicy, class ForwardIt, class UnaryFunction2>
void for_each(ExecutionPolicy&& policy,
              ForwardIt first, ForwardIt last, UnaryFunction2 f); (2) [C++17]
```

1. Applies `f` sequentially to each element in `[first, last)` in order. Returns `f`.
2. Applies `f` to each element, executed according to `policy`.

## Time complexity

Linear in the distance between `first` and `last`. Exactly `last - first` applications of `f`.

## Examples

```cpp
#include <algorithm>
#include <cassert>
#include <vector>

std::vector<int> v{1, 2, 3, 4};

std::for_each(v.begin(), v.end(), [](int& n) { n *= 2; });

assert((v == std::vector<int>{2, 4, 6, 8}));
```
