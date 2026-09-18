---
symbol: std::abs
header: <cmath>
since: C++98
---

Computes the absolute value of an integer or floating-point number.

## Usage

```cpp
int abs(int n);
long abs(long n);
long long abs(long long n);
float abs(float num);
double abs(double num);
long double abs(long double num);
```

Returns the absolute value `|x|`. If is called with an unsigned integral argument that cannot be converted to `int` by integral promotion, the program is ill-formed.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <cmath>

assert(std::abs(-5) == 5);
assert(std::abs(5) == 5);
assert(std::abs(-3.5) == 3.5);
```
