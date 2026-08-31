---
symbol: std::shared_ptr::swap
header: <memory>
since: C++11
---

Exchanges the managed objects of two `shared_ptr` instances.

## Usage

```cpp
void swap(shared_ptr& other) noexcept;
```

Swaps the stored pointer, deleter, and control block between `*this` and `other`. Also available as a non-member `std::swap` overload.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <memory>

auto a = std::make_shared<int>(1);
auto b = std::make_shared<int>(2);

a.swap(b);
assert(*a == 2);
assert(*b == 1);
```
