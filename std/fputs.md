---
symbol: std::fputs
header: <cstdio>
since: C++98
---

Writes a null-terminated string to the output stream `stream`. Like calling std::fputc repeatedly.

## Usage

```cpp
int fputs(const char* str, std::FILE* stream);
```

Writes every character from the null-terminated `str` to the output stream `stream`.
Returns a non-negative value on success, returns EOF and sets the `error` indicator on `stream` on failure.

## Examples

```cpp
#include <cassert>
#include <cstdio>

int rc = std::fputs("Hello, world!\n", stdout);
int ec = std::fputs("Hello, error!\n", stderr);
assert(rc != EOF);
assert(ec != EOF);
```
