---
symbol: std::deque::max_size
header: <deque>
since: C++98
---

Returns the maximum number of elements the deque is able to hold due to system or library implementation.

## Usage

```cpp
size_type max_size() const;
```

The maximum number of elements is returned as a `size_type`. It is a theoretical limit based on the system or library implementation.

## Examples

```cpp
#include <deque>
#include <print>
#include <string>

std::deque<char> char_deque;
std::deque<int> int_deque;
std::deque<std::string> string_deque;

std::println("{}", char_deque.max_size());   // 9223372036854775807
std::println("{}", int_deque.max_size());    // 4611686018427387903
std::println("{}", string_deque.max_size()); //  576460752303423487
```
