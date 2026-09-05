---
symbol: std::bit_cast
header: <bit>
since: C++20
---

Reinterprets the object representation of a value as a different type.

## Usage

```cpp
template<class To, class From>
constexpr To bit_cast(const From& from) noexcept;
```

Copies the bytes of `from` into a new object of type `To`. Both types must be trivially copyable and have the same size.

This is the defined way to do type punning, unlike a `reinterpret_cast` or a union write followed by a read of another member, which are undefined behaviour.

## Time complexity

O(1)

## Examples

```cpp
#include <bit>
#include <cassert>
#include <cstdint>

float f = 1.0f;
auto bits = std::bit_cast<std::uint32_t>(f);

assert(bits == 0x3f800000);
assert(std::bit_cast<float>(bits) == 1.0f);
```
