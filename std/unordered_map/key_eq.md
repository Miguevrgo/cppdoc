---
symbol: std::unordered_map::key_eq
header: <unordered_map>
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
#include <unordered_map>

std::unordered_map<int, int> values;

auto eq = values.key_eq();
assert(eq(1, 1));
assert(!eq(1, 2));
```
