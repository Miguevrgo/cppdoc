---
symbol: std::map::extract
header: <map>
since: C++17
---

Removes an element from the map and returns it as a node handle, without copying or moving it.

## Usage

```cpp
node_type extract(const_iterator pos); (1)
node_type extract(const Key& key); (2)
template<class K>
node_type extract(K&& x); (3) [C++23]
```

1. Removes the element at `pos` and returns a node handle owning it. `pos` must be a valid, dereferenceable iterator into this map.
2. Removes the element with key equivalent to `key`, if one exists, and returns a node handle owning it, or an empty node handle if no such element exists.
3. Same as (2), but `x` can be of any type the map's comparator accepts. Only available if the comparator is transparent, like `std::less<>`, and if `K` does not implicitly convert to `iterator` or `const_iterator`.

The returned node handle can be inserted into another map (or the same one) with `insert`, which moves the owned element without allocating.

## Time complexity

- (1) O(1) amortized.
- (2, 3) O(log n).

## Examples

```cpp
#include <cassert>
#include <map>
#include <string>

std::map<int, std::string> from{{1, "one"}, {2, "two"}};
std::map<int, std::string> to;

auto node = from.extract(1); // no copy or move of the string
to.insert(std::move(node));

assert(from.size() == 1);
assert(to.at(1) == "one");
assert(from.extract(99).empty());
```
