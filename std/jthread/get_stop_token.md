---
symbol: std::jthread::get_stop_token
header: <thread>
since: C++20
---

Returns the `stop_token` associated with the thread's internal stop source.

## Usage

```cpp
std::stop_token get_stop_token() const noexcept;
```

Returns a `std::stop_token` associated with the `jthread`'s internal `stop_source`.

Can be used to check if a stop request has been made, or to register callbacks for when a stop is requested.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <stop_token>
#include <thread>

std::jthread t([](std::stop_token) {});
std::stop_token st = t.get_stop_token();

assert(!st.stop_requested());
t.request_stop();
assert(st.stop_requested());
```
