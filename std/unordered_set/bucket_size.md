---
symbol: std::unordered_set::bucket_size
header: <unordered_set>
since: C++11
---

Returns the number of elements in a specific bucket.

## Usage

```cpp
size_type bucket_size(size_type n) const;
```

Returns the number of elements stored in bucket `n`. `n` must be less than `bucket_count()`.

## Time complexity

Linear in the number of elements in bucket `n`.

## Examples

```cpp
#include <cassert>
#include <unordered_set>

std::unordered_set<int> ids{10};

auto b = ids.bucket(10);
assert(ids.bucket_size(b) == 1);
```
