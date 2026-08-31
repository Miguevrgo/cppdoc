---
symbol: std::unordered_multimap::end
header: <unordered_map>
since: C++11
---

Returns an iterator to one past the last element.

## Usage

```cpp
iterator end(); (1)
const_iterator end() const; (2)
local_iterator end(size_type n); (3)
const_local_iterator end(size_type n) const; (4)
```

- 1, 2. The returned iterator acts as a placeholder and must not be dereferenced. It only ever compares equal to another end iterator.
- 3, 4. Returns an iterator to one past the last element of bucket `n`. `n` must be less than `bucket_count()`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <string>
#include <unordered_map>

std::unordered_multimap<std::string, int> scores{{"Alice", 10}, {"Alice", 20}};

assert(scores.find("Bob") == scores.end());

int count = 0;
for (auto it = scores.begin(); it != scores.end(); ++it) count++;
assert(count == 2);
```
