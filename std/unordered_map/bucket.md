---
symbol: std::unordered_map::bucket
header: <unordered_map>
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
#include <string>
#include <unordered_map>

std::unordered_map<std::string, int> ages{{"Alice", 30}};

auto b = ages.bucket("Alice");
assert(b < ages.bucket_count());
assert(ages.begin(b) != ages.end(b));
```
