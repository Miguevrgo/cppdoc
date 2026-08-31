---
symbol: std::unordered_multimap::load_factor
header: <unordered_map>
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
#include <unordered_map>
#include <string>
#include <cassert>

std::unordered_multimap<std::string, int> values{{"a", 1}, {"a", 2}};
assert(values.load_factor() <= values.max_load_factor());
```
