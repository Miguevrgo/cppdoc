---
symbol: std::unordered_set::bucket
header: <unordered_set>
since: C++11
---

Returns the index of the bucket that a key would be found in.

## Usage

```cpp
size_type bucket(const Key& key) const;
```

Returns the index of the bucket for `key`, in the range `[0, bucket_count())`. The element does not need to actually be present. The behavior is undefined if `bucket_count() == 0`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <unordered_set>

std::unordered_set<int> ids{10, 20, 30};

auto b = ids.bucket(10);
assert(b < ids.bucket_count());
assert(ids.begin(b) != ids.end(b));
```
