---
symbol: std::fputc
header: <cstdio>
since: C++98
---

Writes the character `ch` to the output stream `stream`.

## Usage

```cpp
int fputc(int ch, std::FILE* stream);
```

Writes a character `ch` to the given `stream`. The character is casted to unsigned char before being written. Returns the written character on success, returns `EOF` and sets the error indicator on the stream.

## Examples

```cpp
#include <cassert>
#include <cstdio>

int r = std::fputc(0x78, stdout); // x
assert(r != EOF);
```
