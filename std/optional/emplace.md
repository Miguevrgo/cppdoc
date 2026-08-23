---
symbol: std::optional::emplace
header: <optional>
since: C++17
---

Constructs the contained value in-place, destroying any previously held value.

## Usage

```cpp
template<class... Args>
constexpr T& emplace(Args&&... args); (1)

template<class U, class... Args>
constexpr T& emplace(std::initializer_list<U> ilist, Args&&... args); (2)
```

Constructs the value in-place by forwarding `args` to its constructor. If the optional already contained a value, it is destroyed first. Returns a reference to the newly constructed value.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <optional>
#include <string>

std::optional<std::string> opt;
opt.emplace(3, 'a');

assert(opt.has_value());
assert(*opt == "aaa");
```
