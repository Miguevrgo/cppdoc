---
symbol: std::thread::join
header: <thread>
since: C++11
---

Blocks the current thread until the thread finishes its execution.

## Usage

```cpp
void join();
```

Blocks the calling thread until the thread represented by `*this` finishes execution. If called concurrently on the same thread object, undefined behavior occurs.

## Exceptions

`std::system_error` if an error occurs, which could be caused by:

- `this->get_id() == std::this_thread::get_id()` -> `resource_deadlock_would_occur`
- Not valid thread -> `no_such_processs`
- if `joinable()` is false -> `invalid_argument`

## Examples

```cpp
#include <cassert>
#include <thread>

int value = 0;
std::thread t([&value] {
    value = 42;
});

assert(t.joinable());
t.join();
assert(!t.joinable());
assert(value == 42);
```
