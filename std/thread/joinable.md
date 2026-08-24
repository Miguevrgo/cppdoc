---
symbol: std::thread::joinable
header: <thread>
since: C++11
---

Checks whether the thread object identifies an active thread of execution.

## Usage

```cpp
bool joinable() const noexcept;
```

Returns `true` if the thread object holds an active execution thread (`get_id() != std::thread::id()`).

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <thread>

std::thread t1;
assert(!t1.joinable());

std::thread t2([] {});
assert(t2.joinable());

t2.join();
assert(!t2.joinable());
```
