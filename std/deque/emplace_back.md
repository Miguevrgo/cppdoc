---
symbol: std::deque::emplace_back
header: <deque>
since: C++11
---

Constructs an element in place at the end of the deque, forwarding `args` to its constructor.

## Usage

```cpp
template<class... Args>
reference emplace_back(Args&&... args); [C++17]
```

`args` are forwarded to the element's constructor. Since C++17 a reference to the new element is returned (previously `void`).

## Time complexity

Amortized O(1).

## Examples

```cpp
#include <cassert>
#include <deque>
#include <string>

std::deque<std::string> values;
values.push_back(std::string(3, 'a'));           // builds a string, then moves it in
std::string& last = values.emplace_back(3, 'b'); // builds in place, returns it (C++17)

assert(last == "bbb");
assert((values == std::deque<std::string>{"aaa", "bbb"}));
```
