---
symbol: std::lerp
header: <cmath>
since: C++20
---

Computes the linear interpolation between two values.

## Usage

```cpp
constexpr float lerp(float a, float b, float t) noexcept; (1)
constexpr double lerp(double a, double b, double t) noexcept; (2)
constexpr long double lerp(long double a, long double b, long double t) noexcept; (3)
```

Computes `a + t * (b - a)`.
Guarantees monotonic interpolation and exact boundary values:
- If `t == 0`, returns exactly `a`.
- If `t == 1`, returns exactly `b`.
- If `t >= 0` and `t <= 1`, the result is between `a` and `b`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <cmath>

assert(std::lerp(0.0, 10.0, 0.5) == 5.0);
assert(std::lerp(10.0, 20.0, 0.0) == 10.0);
assert(std::lerp(10.0, 20.0, 1.0) == 20.0);
```
