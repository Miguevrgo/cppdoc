---
symbol: std::string::compare
header: <string>
since: C++98
---

Compares two character sequences lexicographically.

## Usage

```cpp
int compare(const basic_string& str) const noexcept; (1)
int compare(size_type pos1, size_type count1, const basic_string& str) const; (2)
int compare(const CharT* s) const; (3)
```

1. Compares `*this` with `str`. Returns a value `< 0` if `*this` is lexicographically less than `str`,
   `0` if they are equal, and `> 0` if `*this` is greater.
2. Equivalent to `substr(pos1, count1).compare(str)`.
3. Equivalent to `compare(basic_string(s))`.

## Exceptions

`std::out_of_range` if `pos1 > size()` for (2).

## Time complexity

Linear in the number of characters compared.

## Examples

```cpp
#include <cassert>
#include <string>

assert(std::string{"abc"}.compare("abcd") < 0);
assert(std::string{"abc"}.compare("abc") == 0);
assert(std::string{"abcd"}.compare("abc") > 0);
```
