---
symbol: std::unordered_set::bucket_count
header: <unordered_set>
since: C++11
---

Returns the number of buckets in the unordered_set.

## Usage

```cpp
size_type bucket_count() const;
```

A bucket is a slot that holds every element whose key hashes to it. The count grows when the load factor would exceed `max_load_factor()`.

## Time complexity

O(1)

## Examples

```cpp
#include <unordered_set>
#include <cassert>

std::unordered_set<int> values{1, 2, 3};

assert(values.bucket_count() >= 1);

values.reserve(1000);
assert(values.bucket_count() >= 1000);
```
