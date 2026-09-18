---
symbol: std::addressof
header: <memory>
since: C++11
---

Obtains the actual address of an object, even if `operator&` is overloaded.

## Usage

```cpp
template<class T>
constexpr T* addressof(T& arg) noexcept;
```

Returns the actual memory address of `arg`. It is safe to use with types that overload or delete unary `operator&`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <memory>

struct NonAddressable {
    int value = 42;
    int* operator&() = delete;
};

NonAddressable obj;
NonAddressable* ptr = std::addressof(obj);

assert(ptr->value == 42);
```
