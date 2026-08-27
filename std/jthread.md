---
symbol: std::jthread
header: <thread>
since: C++20
---

Class representing a thread of execution with cooperative cancellation and auto-joining behavior on destruction.

## Definition

```cpp
class jthread;
```

A drop-in modern replacement for `std::thread` that automatically joins on destruction and supports cooperative cancellation via `std::stop_token`.

## Examples

```cpp
#include <cassert>
#include <chrono>
#include <stop_token>
#include <thread>

bool executed = false;
{
    std::jthread t([&executed](std::stop_token st) {
        executed = true;
    });
}

assert(executed);
```
