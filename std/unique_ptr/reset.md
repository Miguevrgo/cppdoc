---
symbol: std::unique_ptr::reset
header: <memory>
since: C++11
---

Replaces the managed object.

## Usage

```cpp
void reset(pointer ptr = pointer()) noexcept;
```

Destroys the previously managed object, if any, using the stored deleter, then replaces it with `ptr` (or with nothing, if `ptr` is omitted).

## Time complexity

O(1), not counting the destruction of the previously managed object.

## Examples

```cpp
#include <cassert>
#include <memory>

auto ptr = std::make_unique<int>(42);
ptr.reset(new int{7});
assert(*ptr == 7);

ptr.reset();
assert(ptr == nullptr);
```
