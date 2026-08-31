---
symbol: std::string_view::end
header: <string_view>
since: C++17
---

Returns an iterator to one past the last character.

## Usage

```cpp
constexpr const_iterator end() const noexcept;
```

The returned iterator acts as a placeholder and must not be dereferenced. It only ever compares equal to another end iterator.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <string_view>

std::string_view sv{"Hi"};

assert(sv.end() - sv.begin() == 2);

int count = 0;
for (auto it = sv.begin(); it != sv.end(); ++it) count++;
assert(count == 2);
```
