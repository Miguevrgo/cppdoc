---
symbol: std::puts
header: <cstdio>
since: C++98
---

Writes a null-terminated string and a newline character to `stdout`. Like calling std::fputc repeatedly.

## Usage

```cpp
int puts(const char* str);
```

Writes every character from the null-terminated `str` and an additional `'\n'` to the output stream `stdout`.

Returns a non-negative value on success, returns EOF and sets the `error` indicator on stdout on failure.

## Examples

```cpp
#include <cassert>
#include <cstdio>

std::puts("Hello, world!");
int rc = std::puts("Get possible error");
assert(rc != EOF);
```
