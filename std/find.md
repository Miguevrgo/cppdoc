---
symbol: std::find
header: <algorithm>
since: C++98
---

Finds the first element in the range `[first, last)` equal to `value`.

## Usage

```cpp
template<class InputIt, class T>
InputIt find(InputIt first, InputIt last, const T& value); (1)

template<class ExecutionPolicy, class ForwardIt, class T>
ForwardIt find(ExecutionPolicy&& policy,
               ForwardIt first, ForwardIt last, const T& value); (2) [C++17]
```

1. Returns the first iterator `it` in `[first, last)` for which `*it == value`. If no such element is found, returns `last`.
2. Same as (1), executed according to `policy`.

## Time complexity

Linear in the distance between `first` and `last`.

## Examples

```cpp
#include <algorithm>
#include <execution>
#include <cassert>
#include <vector>

std::vector<int> v{1, 2, 3, 4, 5};

auto it = std::find(v.begin(), v.end(), 3);
assert(it != v.end() && *it == 3);

// Note that par may require linking tbb (-ltbb)
auto not_found = std::find(std::execution::par, v.begin(), v.end(), 42);
assert(not_found == v.end());
```
