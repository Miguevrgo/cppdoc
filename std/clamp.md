---
symbol: std::clamp
header: <algorithm>
since: C++17
---

Clamps a value within a given range `[low, high]`.

## Usage

```cpp
template<class T>
constexpr const T& clamp(const T& v, const T& lo, const T& hi); (1)

template<class T, class Compare>
constexpr const T& clamp(const T& v, const T& lo, const T& hi, Compare comp); (2)
```

If `v` is within `[low, high]` returns `v`, otherwise returns the nearest boundary.
If `lo` is greater than `hi`, the behavior is undefined.

## Time complexity

O(1)

## Examples

```cpp
#include <algorithm>
#include <cassert>

assert(std::clamp(5, 0, 10) == 5);   // within range
assert(std::clamp(-3, 0, 10) == 0);  // below min
assert(std::clamp(15, 0, 10) == 10); // above max
```
