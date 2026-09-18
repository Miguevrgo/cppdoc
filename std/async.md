---
symbol: std::async
header: <future>
since: C++11
---

Runs a function asynchronously and returns a `std::future` holding the result.

## Usage

```cpp
template<class Function, class... Args>
std::future<std::invoke_result_t<std::decay_t<Function>, std::decay_t<Args>...>>
async(Function&& f, Args&&... args); (1)

template<class Function, class... Args>
std::future<std::invoke_result_t<std::decay_t<Function>, std::decay_t<Args>...>>
async(std::launch policy, Function&& f, Args&&... args); (2)
```

1. Calls (2) with `policy = std::launch::async | std::launch::deferred`.
2. Runs `f(args...)` according to launch policy:
   - `std::launch::async`: Executes task on a new thread.
   - `std::launch::deferred`: Executes task lazily when `.get()` or `.wait()` is called on the returned future.

## Examples

```cpp
#include <cassert>
#include <future>

auto fut = std::async(std::launch::async, [](int a, int b) {
    return a + b;
}, 20, 22);

assert(fut.get() == 42);
```
