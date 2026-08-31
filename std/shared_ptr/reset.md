---
symbol: std::shared_ptr::reset
header: <memory>
since: C++11
---

Replaces the managed object.

## Usage

```cpp
void reset() noexcept; (1)

template<class Y>
void reset(Y* ptr); (2)
```

(1) releases ownership, if any, leaving `*this` empty. (2) replaces it with `ptr`, using `delete` as the deleter (or a custom one via `reset(Y* ptr, Deleter d)`). If `*this` was the last owner, the previous object is destroyed.

## Time complexity

O(1), not counting destruction of the previously managed object.

## Examples

```cpp
#include <cassert>
#include <memory>

auto ptr = std::make_shared<int>(42);
ptr.reset();
assert(ptr == nullptr);
ptr.reset(new int{7});
assert(*ptr == 7);
```
