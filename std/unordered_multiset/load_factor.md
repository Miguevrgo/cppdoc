---
symbol: std::unordered_multiset::load_factor
header: <unordered_set>
since: C++11
---

Returns the average number of elements per bucket.

## Usage

```cpp
float load_factor() const;
```

Equal to `size() / bucket_count()`. When an insertion would push this past `max_load_factor()` the container rehashes.

## Time complexity

O(1)

## Examples

```cpp
#include <unordered_set>
#include <cassert>

std::unordered_multiset<int> values{1, 1, 2};
assert(values.load_factor() <= values.max_load_factor());
```
