---
symbol: std::unordered_map::rehash
header: <unordered_map>
since: C++11
---

Sets the number of buckets and rehashes the container.

## Usage

```cpp
void rehash(size_type count);
```

Sets the number of buckets to `count` and rehashes the container so that every element is put into the bucket it belongs to. `count` is first increased, if necessary, to the smallest value that keeps `load_factor() <= max_load_factor()`. If `count` is less than the current `bucket_count()`, this may still shrink the number of buckets, subject to that same constraint. All iterators are invalidated; references and pointers to elements are not.

## Time complexity

Average case linear in the size of the unordered_map. Worst case quadratic.

## Examples

```cpp
#include <cassert>
#include <unordered_map>

std::unordered_map<int, int> values{{1, 1}, {2, 2}};

values.rehash(100);
assert(values.bucket_count() >= 100);
assert(values.size() == 2);
```
