---
symbol: std::jthread::join
header: <thread>
since: C++20
---

Blocks the current thread until the `jthread` finishes execution.

## Usage

```cpp
void join();
```

Blocks the current thread until the `jthread` finishes execution. No synchronization is performed on the `jthread` itself. Concurrently
calling `join()` on the same jthread object results in Undefined behavior.

## Exceptions

`std::system_error` if an error occurs

## Examples

```cpp
#include <cassert>
#include <thread>

std::array<int, 2> data = {0, 0};

auto worker_task = [](int& slot, int value) {
    std::this_thread::sleep_for(std::chrono::milliseconds(100));
    slot = value;
};

std::jthread worker_1(worker_task, std::ref(data[0]), 42);
std::jthread worker_2(worker_task, std::ref(data[1]), 99);

worker_1.join();
assert(data[0] == 42);
worker_2.join();
assert(data[1] == 99);
```
