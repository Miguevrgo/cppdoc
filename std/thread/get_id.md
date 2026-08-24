---
symbol: std::thread::get_id
header: <thread>
since: C++11
---

Returns the unique identifier of the thread.

## Usage

```cpp
std::thread::id get_id() const noexcept;
```

Returns `std::thread::id` representing the thread associated with `*this`. If the thread object does not identify an active thread (`!joinable()`), returns a default-constructed `std::thread::id`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <thread>

std::thread::id main_id = std::this_thread::get_id();
std::thread t([main_id] {
    assert(std::this_thread::get_id() != main_id);
});

assert(t.get_id() != std::thread::id{});
t.join();
assert(t.get_id() == std::thread::id{});
```
