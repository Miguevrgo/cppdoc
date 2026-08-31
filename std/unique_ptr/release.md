---
symbol: std::unique_ptr::release
header: <memory>
since: C++11
---

Releases ownership of the managed object without destroying it.

## Usage

```cpp
pointer release() noexcept;
```

Returns a pointer to the managed object and resets `*this` to empty (`get() == nullptr` afterward), without calling the deleter. The caller becomes responsible for the returned pointer's lifetime, e.g. by handing it to another owner or freeing it manually.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <memory>

auto ptr = std::make_unique<int>(42);
int* raw = ptr.release();

assert(ptr == nullptr);
assert(*raw == 42);
delete raw;
```
