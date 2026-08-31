---
symbol: std::list::emplace_front
header: <list>
since: C++11
---

Constructs an element in place at the beginning of the list, forwarding `args` to its constructor.

## Usage

```cpp
template<class... Args>
void emplace_front(Args&&... args); [C++11, until C++17]

template<class... Args>
reference emplace_front(Args&&... args); [C++17]
```

`args` are forwarded to `T`'s constructor, each keeping its value category, avoiding the temporary that `push_front` would need. Since C++17 a reference to the new element is returned.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <list>
#include <string>

std::list<std::string> l;

std::string& ref = l.emplace_front(3, 'x'); // builds "xxx" in place

assert(ref == "xxx");
assert(&ref == &l.front());
```
