---
symbol: std::rotate
header: <algorithm>
since: C++98
---

Left-rotates elements in `[first, last)` such that `middle` becomes the new first element.

## Usage

```cpp
template<class ForwardIt>
ForwardIt rotate(ForwardIt first, ForwardIt middle, ForwardIt last); (1)

template<class ExecutionPolicy, class ForwardIt>
ForwardIt rotate(ExecutionPolicy&& policy,
                 ForwardIt first, ForwardIt middle, ForwardIt last); (2) [C++17]
```

Reorders elements in the range `[first, last)` such that the element `*middle` becomes the first element, and `*(middle - 1)` becomes the last.

Returns an iterator pointing to the new position of the element that was originally pointed to by `first`.

## Time complexity

Linear in `last - first`: at most `last - first` swaps.

## Examples

```cpp
#include <algorithm>
#include <cassert>
#include <vector>

std::vector<int> v{1, 2, 3, 4, 5};

std::rotate(v.begin(), v.begin() + 2, v.end());
assert((v == std::vector<int>{3, 4, 5, 1, 2}));
```
