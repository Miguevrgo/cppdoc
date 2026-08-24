---
symbol: std::thread::detach
header: <thread>
since: C++11
---

Detaches the thread of execution from the `std::thread` object.

## Usage

```cpp
void detach();
```

Separates the thread of execution from the `std::thread` object, allowing the thread to continue independently. After calling `detach()`, `*this` no longer represents any thread and `joinable() == false`.

## Exceptions

`std::system_error` if `!joinable()` or an error occurs.

## Examples

```cpp
#include <cassert>
#include <chrono>
#include <thread>

std::thread t([] {
    std::this_thread::sleep_for(std::chrono::milliseconds(50));
});

assert(t.joinable());
t.detach();
assert(!t.joinable());
```
