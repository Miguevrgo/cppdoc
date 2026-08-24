---
symbol: std::thread::hardware_concurrency
header: <thread>
since: C++11
---

Returns the number of concurrent threads supported by the underlying hardware.

## Usage

```cpp
static unsigned int hardware_concurrency() noexcept;
```

Returns the number of concurrent execution threads supported by hardware implementation, this value should be considered only a hint.

## Examples

```cpp
#include <cassert>
#include <thread>

unsigned int cores = std::thread::hardware_concurrency();
assert(cores >= 0);
```
