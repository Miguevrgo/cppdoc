---
symbol: std::thread::swap
header: <thread>
since: C++11
---

Swaps two thread objects.

## Usage

```cpp
void swap(std::thread& other) noexcept;
```

Exchanges the underlying thread handles of `*this` and `other`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <thread>

std::thread t1([] {});
std::thread t2;

assert(t1.joinable());
assert(!t2.joinable());

t1.swap(t2);

assert(!t1.joinable());
assert(t2.joinable());

t2.join();
```
