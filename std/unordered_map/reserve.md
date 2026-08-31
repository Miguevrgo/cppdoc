---
symbol: std::unordered_map::reserve
header: <unordered_map>
since: C++11
---

Reserves space for at least the specified number of elements.

## Usage

```cpp
void reserve(size_type count);
```

Sets the number of buckets so that the unordered_map can hold `count` elements without exceeding `max_load_factor()`, and rehashes if needed. Equivalent to `rehash(std::ceil(count / max_load_factor()))`. Useful to avoid repeated rehashing when the final size is known ahead of time.

## Time complexity

Average case linear in the size of the unordered_map. Worst case quadratic.

## Examples

```cpp
#include <cassert>
#include <unordered_map>

std::unordered_map<int, int> values;

values.reserve(1000);
assert(values.bucket_count() >= 1000);
```
