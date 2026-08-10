---
symbol: std::rename
header: <cstdio>
since: C++98
---

Renames the file identified by the character string pointed to by `old_filename` to `new_filename`.

## Usage

```cpp
int rename(const char* old_filename, const char* new_filename);
```

Changes the filename of the file identified by the character string pointed to by `old_filename` to `new_filename`. If `new_filename` already exists, the behaviour is implementation-defined. Returns 0 upon success or non-zero on error.

## Examples

```cpp
#include <cstdio>
#include <fstream>

std::ofstream("file1.txt").put('a');
std::rename("file1.txt", "file2.txt");
std::remove("file2.txt");
```
