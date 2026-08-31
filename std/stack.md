---
symbol: std::stack
header: <stack>
since: C++98
---

LIFO (last-in, first-out) adaptor that provides push/pop/top access over an underlying container.

## Definition

```cpp
template<class T, class Container = std::deque<T>>
class stack;
```

`stack` is an adaptor, not a full container: it wraps an underlying container (`std::deque` by default) and exposes only the operations needed for LIFO access — `push`, `pop`, `top`, `empty`, `size` — no iterators.

## Complexity

- Push/pop/top **O(1)** (assuming the underlying container's corresponding operations are O(1), true for the default `std::deque`)

## Examples

```cpp
#include <cassert>
#include <stack>

std::stack<int> s;
s.push(1);
s.push(2);
s.push(3);

assert(s.top() == 3);

s.pop();
assert(s.top() == 2);
assert(s.size() == 2);
```
