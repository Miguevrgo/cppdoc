---
symbol: std::random_device
header: <random>
since: C++11
---

Uniformly-distributed integer random number generator that produces non-deterministic random numbers.

## Definition

```cpp
class random_device;
```

Hardware-based pseudo-random number generator that requests entropy from the OS, tipically used to seed pseudo-random number engines such as `std::mt19937`.

## Usage

```cpp
result_type operator()();
```

Generates a random value of type `unsigned int`.

## Examples

```cpp
#include <cassert>
#include <random>

std::random_device rd;
unsigned int val = rd();

assert(val >= rd.min() && val <= rd.max());
```
