---
symbol: std::jthread::joinable
header: <thread>
since: C++20
---

Checks whether the jthread object identifies an active thread of execution.

## Usage

```cpp
bool joinable() const noexcept;
```

Returns `true` if the `jthread` object holds an active execution thread.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <thread>

std::jthread t1;
assert(!t1.joinable());

std::jthread t2([] {});
assert(t2.joinable());

t2.join();
assert(!t2.joinable());
```
