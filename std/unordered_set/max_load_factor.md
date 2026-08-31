---
symbol: std::unordered_set::max_load_factor
header: <unordered_set>
since: C++11
---

Gets or sets the maximum load factor.

## Usage

```cpp
float max_load_factor() const; (1)
void max_load_factor(float ml); (2)
```

- 1. Returns the current maximum load factor, which defaults to `1.0`.
- 2. Sets the maximum load factor to `ml`. This may cause a rehash on the next insertion if the current load factor now exceeds `ml`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <unordered_set>

std::unordered_set<int> ids;
assert(ids.max_load_factor() == 1.0f);

ids.max_load_factor(2.0f);
assert(ids.max_load_factor() == 2.0f);
```
