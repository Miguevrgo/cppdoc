---
symbol: std::unique_ptr::swap
header: <memory>
since: C++11
---

Exchanges the managed objects of two `unique_ptr` instances.

## Usage

```cpp
void swap(unique_ptr& other) noexcept;
```

Swaps the stored pointer and deleter between `*this` and `other`. Also available as a non-member `std::swap` overload.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <memory>

auto a = std::make_unique<int>(1);
auto b = std::make_unique<int>(2);

a.swap(b);
assert(*a == 2);
assert(*b == 1);
```
