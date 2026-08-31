---
symbol: std::string
header: <string>
since: C++98
---

Sequence container that stores and manages a mutable, contiguous sequence of `char` characters.

## Definition

```cpp
template<
    class CharT,
    class Traits = std::char_traits<CharT>,
    class Allocator = std::allocator<CharT>
> class basic_string;
```

`std::string` is an alias for `std::basic_string<char>`. Implementations commonly apply a small-string
optimization, storing short strings inline without heap allocation, though the standard does not require
it. Since C++11, the underlying storage is guaranteed contiguous and null-terminated, so `&s[0]` is a
valid `char*` for the whole string.

## Complexity

- Random access **O(1)**
- Insertion or removal at the end **O(1)** amortized
- Insertion or removal elsewhere **O(N)**
- Search for a substring **O(N*M)** worst case

## Examples

```cpp
#include <cassert>
#include <string>

std::string s{"Hello"};
s += ", World!";

assert(s.size() == 13);
assert(s.front() == 'H');
assert(s.back() == '!');
assert(s.substr(0, 5) == "Hello");
```
