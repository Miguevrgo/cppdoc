---
symbol: std::copy
header: <algorithm>
since: C++98
---

Copies the elements in the range `[first, last)` to another range starting at `d_first`.

## Usage

```cpp
template<class InputIt, class OutputIt>
OutputIt copy(InputIt first, InputIt last, OutputIt d_first); (1)

template<class ExecutionPolicy, class ForwardIt1, class ForwardIt2>
ForwardIt2 copy(ExecutionPolicy&& policy,
                ForwardIt1 first, ForwardIt1 last, ForwardIt2 d_first); (2) [C++17]
```

Copies elements from `[first, last)` to `[d_first, d_first + (last - first))`. If `d_first` is within `[first, last)`, the behavior is undefined.

Returns the output iterator pointing to the element past the last element copied (`d_first + (last - first)`).

## Time complexity

Linear in the distance between `first` and `last`.

## Examples

```cpp
#include <algorithm>
#include <cassert>
#include <vector>

std::vector<int> src{1, 2, 3, 4};
std::vector<int> dst(4);

auto it = std::copy(src.begin(), src.end(), dst.begin());
assert(it == dst.end());
assert(dst == src);
```
