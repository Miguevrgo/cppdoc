---
symbol: std::string::push_back
header: <string>
since: C++98
---

Appends a character to the end of the string.

## Usage

```cpp
void push_back(CharT ch);
```

Increases the size of the string by one, adding `ch` as the new last character.

## Exceptions

`std::length_error` if the resulting size would exceed `max_size()`.

## Time complexity

Amortized O(1). If the new size would exceed the current capacity, O(size()) time is taken to reallocate
and move the characters into the new allocation.

## Examples

```cpp
#include <cassert>
#include <string>

std::string s{"Hell"};
s.push_back('o');
assert(s == "Hello");
```
