---
symbol: std::multiset::empty
header: <set>
since: C++98
---

Checks if the multiset is empty.

## Usage

```cpp
bool empty() const;
```

Returns `true` if the multiset is empty, `false` otherwise.

## Examples

```cpp
#include <set>
#include <cassert>

std::multiset<int> num;
assert(num.empty());
```

```cpp
#include <set>
#include <cassert>

std::multiset<char> chars;
chars.emplace('a');
assert(!chars.empty());
```
