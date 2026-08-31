---
symbol: std::unordered_set::hash_function
header: <unordered_set>
since: C++11
---

Returns the function used to hash the keys.

## Usage

```cpp
hasher hash_function() const;
```

Returns a copy of the hash function object, i.e. the `Hash` template parameter, used by the unordered_set to hash keys into bucket indices.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <unordered_set>

std::unordered_set<int> ids;

auto hasher = ids.hash_function();
assert(hasher(1) == std::hash<int>{}(1));
```
