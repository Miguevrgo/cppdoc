---
symbol: std::remove
header: <cstdio>
since: C++98
---

Deletes the file identified by the character string pointed by `pathname`.

## Usage

```cpp
int remove(const char* pathname);
```

Deletes the file identified by the character string pointed by `pathname`. If the file is currently open the behaviour is implementation-defined, returns zero upon success or non-zero on error.

## Examples

```cpp
#include <cstdio>
#include <fstream>

std::ofstream("file1.txt").put('a');
std::remove("file1.txt");
```
