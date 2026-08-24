---
symbol: std::jthread::swap
header: <thread>
since: C++20
---

Swaps two jthread objects.

## Usage

```cpp
void swap(std::jthread& other) noexcept;
```

Exchanges the underlying thread handles and internal stop states of `*this` and `other`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <thread>

std::jthread t1([] {});
std::jthread t2;

assert(t1.joinable());
assert(!t2.joinable());

t1.swap(t2);

assert(!t1.joinable());
assert(t2.joinable());

t2.join();
```
