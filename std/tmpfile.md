---
symbol: std::tmpfile
header: <cstdio>
since: C++98
---

Creates and opens a temporary file with a unique auto-generated filename.

## Usage

```cpp
std::FILE* tmpfile();
```

Creates a temporary file which is opened as a binary file for update, at least TMP_MAX may be opened during the lifetime of a program. If the program closes the file or it terminates normally, the file(s) is automatically deleted.

## Examples

```cpp
#include <cstdio>
#include <cassert>

std::FILE* tmp_file = std::tmpfile();
std::fputs("Hello, World!", tmp_file);
std::rewind(tmp_file);

char buf[14];
std::fgets(buf, sizeof(buf), tmp_file);
assert(strcmp(buf, "Hello, World!") == 0)
```
