---
symbol: std::iota
header: <numeric>
since: C++11
---

Fills a range with sequentially increasing values starting from `value`.

## Usage

```cpp
template<class ForwardIt, class T>
void iota(ForwardIt first, ForwardIt last, T value); (1)
```

Assigns `value` to `*first`, `++value` to `*(first + 1)`, and so on.

## Time complexity

Linear in the distance between `first` and `last`: exactly `last - first` increments and assignments.

## Examples

```cpp
#include <cassert>
#include <numeric>
#include <vector>

std::vector<int> v(5);
std::iota(v.begin(), v.end(), 10);

assert((v == std::vector<int>{10, 11, 12, 13, 14}));
```
