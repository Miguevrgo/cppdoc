---
symbol: std::multimap
header: <map>
since: C++98
---

Sorted associative container that contains key-value pairs, allowing multiple elements with equivalent keys.

## Definition

```cpp
template<
    class Key,
    class T,
    class Compare = std::less<Key>,
    class Allocator = std::allocator<std::pair<const Key, T>>
> class multimap;
```

Like `map`, keys are sorted using the comparison function `Compare`, usually implemented as a red-black tree. Unlike `map`, keys do not need to be unique: `insert` never fails because of a duplicate key, so its overloads return a plain `iterator` instead of `std::pair<iterator, bool>`.

## Complexity

- O(Log N) Search
- O(Log N) Removal
- O(Log N) Insertion

## Examples

```cpp
#include <cassert>
#include <map>
#include <string>

std::multimap<std::string, int> ages;
ages.insert({"Alice", 30});
ages.insert({"Alice", 25});
assert(ages.size() == 2);
assert(ages.count("Alice") == 2);
```
