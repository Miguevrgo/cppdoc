---
symbol: std::string::insert
header: <string>
since: C++98
---

Inserts characters into the string at the specified position.

## Usage

```cpp
basic_string& insert(size_type index, const CharT* s); (1)
basic_string& insert(size_type index, size_type count, CharT ch); (2)
basic_string& insert(size_type index, const basic_string& str); (3)
iterator insert(const_iterator pos, CharT ch); (4)
iterator insert(const_iterator pos, size_type count, CharT ch); (5)
```

1. Inserts the null-terminated character string `s` before the character at `index`.
2. Inserts `count` copies of `ch` before the character at `index`.
3. Inserts a copy of `str` before the character at `index`.
4. Inserts `ch` before the character pointed to by `pos`, returning an iterator to the inserted character.
5. Inserts `count` copies of `ch` before `pos`, returning an iterator to the first inserted character (or
   `pos` if `count == 0`).

## Exceptions

`std::out_of_range` if `index > size()` for the `index`-based overloads. `std::length_error` if the
resulting size would exceed `max_size()`.

## Time complexity

Linear in the number of characters inserted plus the distance to the end of the string.

## Examples

```cpp
#include <cassert>
#include <string>

std::string s{"Hello!"};
s.insert(5, ", World"); // (1)
assert(s == "Hello, World!");
```

```cpp
#include <cassert>
#include <string>

std::string s{"Hello"};
s.insert(s.begin(), '>'); // (4)
s.insert(s.end(), 3, '!'); // (5)
assert(s == ">Hello!!!");
```
