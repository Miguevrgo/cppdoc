---
symbol: std::unordered_map::cend
header: <unordered_map>
since: C++11
---

Returns a const iterator to one past the last element.

## Usage

```cpp
const_iterator cend() const; (1)
const_local_iterator cend(size_type n) const; (2)
```

- 1. The returned iterator acts as a placeholder and must not be dereferenced. It only ever compares equal to another end iterator. Always returns a `const_iterator`, even on a non-const unordered_map, unlike `end()`.
- 2. Returns an iterator to one past the last element of bucket `n`. `n` must be less than `bucket_count()`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <string>
#include <unordered_map>

std::unordered_map<std::string, int> ages{{"Alice", 30}, {"Bob", 25}};

int count = 0;
for (auto it = ages.cbegin(); it != ages.cend(); ++it) count++;
assert(count == 2);
```
