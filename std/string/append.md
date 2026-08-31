---
symbol: std::string::append
header: <string>
since: C++98
---

Appends characters to the end of the string.

## Usage

```cpp
basic_string& append(const basic_string& str); (1)
basic_string& append(const CharT* s); (2)
basic_string& append(size_type count, CharT ch); (3)
template<class InputIt>
basic_string& append(InputIt first, InputIt last); (4)
```

1. Appends a copy of `str`.
2. Appends the null-terminated character string `s`.
3. Appends `count` copies of `ch`.
4. Appends characters from the range `[first, last)`.

All overloads return `*this`, so calls can be chained. `operator+=` is a shorthand for the most common
forms of `append`.

## Exceptions

`std::length_error` if the resulting size would exceed `max_size()`.

## Time complexity

Amortized linear in the number of characters appended.

## Examples

```cpp
#include <cassert>
#include <string>

std::string s{"Hello"};
s.append(", ").append("World").append(1, '!');
assert(s == "Hello, World!");
```
