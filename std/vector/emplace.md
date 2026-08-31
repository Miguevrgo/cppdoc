---
symbol: std::vector::emplace
header: <vector>
since: C++11
---

Constructs an element in-place at the specified position.

## Usage

```cpp
template<class... Args>
iterator emplace(const_iterator pos, Args&&... args);
```

Constructs a new element directly before `pos` by forwarding `args` to `T`'s constructor, avoiding the copy or move that `insert` would need. Returns an iterator pointing to the newly constructed element.

## Exceptions

If an exception is thrown other than by the constructors, the assignment operators or move constructor of `T`, this function has no effect.

## Time complexity

Constant plus linear in the distance between `pos` and the end of the vector.

## Examples

```cpp
#include <cassert>
#include <string>
#include <vector>

std::vector<std::string> vec{"a", "c"};
auto it = vec.emplace(vec.begin() + 1, "b");

assert(*it == "b");
assert((vec == std::vector<std::string>{"a", "b", "c"}));
```
