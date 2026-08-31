---
symbol: std::unordered_map::hash_function
header: <unordered_map>
since: C++11
---

Returns the function used to hash the keys.

## Usage

```cpp
hasher hash_function() const;
```

Returns a copy of the hash function object, i.e. the `Hash` template parameter, used by the unordered_map to hash keys into bucket indices.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <string>
#include <unordered_map>

std::unordered_map<std::string, int> values;

auto hasher = values.hash_function();
assert(hasher("a") == std::hash<std::string>{}("a"));
```
