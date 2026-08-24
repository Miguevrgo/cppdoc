---
symbol: std::jthread::get_stop_source
header: <thread>
since: C++20
---

Returns the internal `stop_source` object.

## Usage

```cpp
std::stop_source get_stop_source() noexcept;
```

Returns the `std::stop_source` responsible for coordinating stop requests with this `jthread`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <stop_token>
#include <thread>

std::jthread t([](std::stop_token) {});
std::stop_source ss = t.get_stop_source();

assert(ss.stop_possible());
assert(!ss.stop_requested());
ss.request_stop();
assert(t.get_stop_token().stop_requested());
```
