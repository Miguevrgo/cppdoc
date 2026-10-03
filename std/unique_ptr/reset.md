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

Deletes the currently managed object (if any) and takes ownership of `ptr`. If `ptr` is omitted or `nullptr`, the `unique_ptr` becomes empty.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <memory>

auto p = std::make_unique<int>(10);
assert(*p == 10);

p.reset(new int(20));
assert(*p == 20);

p.reset();
assert(p == nullptr);
```
