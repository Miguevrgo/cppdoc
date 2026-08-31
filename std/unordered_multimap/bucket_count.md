---
symbol: std::unordered_multimap::bucket_count
header: <unordered_map>
since: C++11
---

Returns the number of buckets in the unordered_multimap.

## Usage

```cpp
size_type bucket_count() const;
```

A bucket is a slot that holds every element whose key hashes to it. The count grows when the load factor would exceed `max_load_factor()`.

## Time complexity

O(1)

## Examples

```cpp
#include <unordered_map>
#include <string>
#include <cassert>

std::unordered_multimap<std::string, int> values{{"a", 1}, {"a", 2}};

assert(values.bucket_count() >= 1);
values.reserve(1000);
assert(values.bucket_count() >= 1000);
```
