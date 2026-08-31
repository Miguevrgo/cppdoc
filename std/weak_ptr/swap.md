---
symbol: std::weak_ptr::swap
header: <memory>
since: C++11
---

Exchanges the observed objects of two `weak_ptr` instances.

## Usage

```cpp
void swap(weak_ptr& other) noexcept;
```

Swaps the observed object between `*this` and `other`. Also available as a non-member `std::swap` overload.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <memory>

auto a = std::make_shared<int>(1);
auto b = std::make_shared<int>(2);
std::weak_ptr<int> wa = a;
std::weak_ptr<int> wb = b;

wa.swap(wb);
assert(*wa.lock() == 2);
assert(*wb.lock() == 1);
```
