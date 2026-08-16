---
symbol: std::fgets
header: <cstdio>
since: C++98
---

Reads characters from the given file stream and stores them in the character array pointed by `str`.

## Usage

```cpp
char* fgets(char* str, int count, std::FILE* stream);
```

Reads at most `count - 1` characters from the given `stream` and stores them in `str`, parsing stops if a new line is found (which is included) or if EOF occurs. Writes a null character on success at the position immediately after the last character written to `str`.

Returns `str` on success and null pointer on failure, if EOF is encountered, it sets `eof` indicator on `stream`, if another error is encountered `error` indicator is set on `stream`.

## Examples

```cpp
#include <cassert>
#include <cstdio>
#include <cstring>

std::FILE* tmp_file = std::tmpfile();
std::fputs("Alan Turing!\n", tmp_file);
std::rewind(tmp_file);

char buf[8];
auto name = std::fgets(buf, sizeof(buf), tmp_file);
assert(strcmp(name, "Alan Tu") == 0);
```
