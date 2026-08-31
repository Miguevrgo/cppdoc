---
symbol: std::unordered_set::key_eq
header: <unordered_set>
since: C++11
---

Returns the function used to compare keys for equality.

## Usage

```cpp
key_equal key_eq() const;
```

Returns a copy of the key equality predicate, i.e. the `KeyEqual` template parameter, used to decide whether two keys are equivalent.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <unordered_set>

std::unordered_set<int> ids;

auto eq = ids.key_eq();
assert(eq(1, 1));
assert(!eq(1, 2));
```
