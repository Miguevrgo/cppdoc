---
symbol: std::jthread::detach
header: <thread>
since: C++20
---

Detaches the thread of execution from the jthread object, allowing the execution
to continue independently.

## Usage

```cpp
void detach();
```

Detaches the thread of execution from the jthread object, allowing the execution
to continue independently. After calling it, `*this` no longer owns any thread.

## Exceptions

`std::system_error` if `!joinable()` or an error occurs

## Examples

```cpp
#include <print>
#include <thread>
#include <string_view>
#include <cassert>
#include <chrono>

void log_event(std::string_view msg) {
    std::println("[LOG] {}", msg);
}

std::jthread t(log_event, "User logged in");

assert(t.joinable());
t.detach();
assert(!t.joinable());
std::this_thread::sleep_for(std::chrono::seconds{1});
```
