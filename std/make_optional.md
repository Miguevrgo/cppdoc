---
symbol: std::make_optional
header: <optional>
since: C++17
---

Creates a `std::optional` object from the given arguments.

## Usage

```cpp
template<class T>
constexpr std::optional<std::decay_t<T>> make_optional(T&& value); (1)

template<class T, class... Args>
constexpr std::optional<T> make_optional(Args&&... args); (2)

template<class T, class U, class... Args>
constexpr std::optional<T> make_optional(std::initializer_list<U> ilist, Args&&... args); (3)
```

1. Constructs an optional containing a decay-copied or moved `value`.
2. Constructs the contained type `T` directly in place with `args`.
3. Constructs the contained type `T` directly in place with `ilist` and `args`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <optional>
#include <string>

auto opt1 = std::make_optional(42);
assert(opt1.has_value() && *opt1 == 42);

auto opt2 = std::make_optional<std::string>(3, 'a');
assert(*opt2 == "aaa");
```
