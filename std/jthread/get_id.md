---
symbol: std::jthread::get_id
header: <thread>
since: C++20
---

Returns the unique identifier of the jthread.

## Usage

```cpp
std::jthread::id get_id() const noexcept;
```

Returns `std::jthread::id` representing the thread associated with `*this`.

If the `jthread` object does not identify an active thread (`!joinable()`), returns a default-constructed `std::jthread::id`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <thread>

std::jthread t([] {});
assert(t.get_id() != std::jthread::id{});

t.join();
assert(t.get_id() == std::jthread::id{});
```
