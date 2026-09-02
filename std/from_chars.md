---
symbol: std::from_chars
header: <charconv>
since: C++17
---

Parses an integer or floating-point value from a character sequence.

## Usage

```cpp
std::from_chars_result from_chars(const char* first, const char* last,
                              IntegerT& value, int base = 10); (1)

std::from_chars_result from_chars(const char* first, const char* last,
                              FloatT& value, chars_format fmt = chars_format::general); (2)
```

Analyzes the pattern `[first, last)` to extract a number into `value`.

Returns `std::from_chars_result{ptr, ec}`:

- `ptr`: Points to the first character not matching the pattern.
- `ec`: Error code equal to `std::errc{}` on success, `std::errc::invalid_argument` if no conversion could be performed, or `std::errc::result_out_of_range` on overflow.

## Examples

```cpp
#include <cassert>
#include <charconv>
#include <string_view>
#include <system_error>

std::string_view str = "42abc";
int val = 0;

auto [ptr, ec] = std::from_chars(str.data(), str.data() + str.size(), val);

assert(ec == std::errc{});
assert(val == 42);
assert(*ptr == 'a');
```
