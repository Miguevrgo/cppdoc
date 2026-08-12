---
symbol: std::optional::reset
header: <optional>
since: C++17
---

Destroys the contained value.

## Usage

```cpp
void reset() noexcept;
```

If the optional contains a value, it destroys that value, otherwise there are no effects.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <optional>

std::optional<int> opt{43};
assert(opt);
opt.reset();
assert(!opt);
```
