---
symbol: std::set::empty
header: <set>
since: C++98
---

Checks if the set is empty.

## Usage

```cpp
bool empty() const;
```

Returns `true` if the set is empty, `false` otherwise.

## Examples

```cpp
#include <set>
#include <cassert>

std::set<int> num;
assert(num.empty());
```

```cpp
#include <set>
#include <cassert>

std::set<char> chars;
chars.emplace('a');
assert(!chars.empty());
```
