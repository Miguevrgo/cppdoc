---
symbol: std::unordered_map::bucket_size
header: <unordered_map>
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
#include <unordered_map>

std::unordered_map<int, int> numbers{{1, 10}};

auto b = numbers.bucket(1);
assert(numbers.bucket_size(b) == 1);
```
