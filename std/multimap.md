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

Like `map`, keys are sorted using the comparison function `Compare`, usually implemented as a red-black tree. Unlike `map`, keys do not need to be unique: `insert` never fails because of a duplicate key, so its overloads return a plain `iterator` instead of `std::pair<iterator, bool>`. Because a key can map to several values, there is no unambiguous way to access "the" value for a key, so `multimap` has neither `operator[]` nor `at`; use `equal_range`, `lower_bound`/`upper_bound`, or `find`/`count` to work with all values sharing a key.

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
ages.insert({"Alice", 25}); // duplicate key, still inserted

assert(ages.size() == 2);
assert(ages.count("Alice") == 2);
```
