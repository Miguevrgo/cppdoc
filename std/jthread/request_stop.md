---
symbol: std::jthread::request_stop
header: <thread>
since: C++20
---

Issues a stop request to the execution thread via its internal stop source.

## Usage

```cpp
bool request_stop() noexcept;
```

Requests the thread of execution to stop by invoking `request_stop()` on its associated `std::stop_source`.

Returns `true` if this invocation was the first to successfully request a stop, `false` otherwise.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <chrono>
#include <stop_token>
#include <thread>

bool stopped = false;
std::jthread worker([&stopped](std::stop_token st) {
    while (!st.stop_requested()) {
        std::this_thread::sleep_for(std::chrono::milliseconds(10));
    }
    stopped = true;
});

assert(worker.request_stop());
worker.join();
assert(stopped);
```
