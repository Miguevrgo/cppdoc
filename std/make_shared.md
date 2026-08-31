---
symbol: std::make_shared
header: <memory>
since: C++11
---

Constructs an object of type `T` and wraps it in a `shared_ptr`, in a single allocation.

## Usage

```cpp
template<class T, class... Args>
shared_ptr<T> make_shared(Args&&... args);
```

Forwards `args` to a constructor of `T`. Unlike `shared_ptr<T>(new T(...))`, which performs two separate allocations (one for the object, one for the control block), `make_shared` allocates the object and its control block together in a single allocation, improving performance and locality. One tradeoff: since both share the allocation, the object's memory is not released until the last `weak_ptr` referencing it is also destroyed, not just the last `shared_ptr`.

## Time complexity

O(1) plus the cost of constructing `T`, not counting the allocation itself.

## Examples

```cpp
#include <cassert>
#include <memory>
#include <string>

auto ptr = std::make_shared<std::string>("hello");
assert(*ptr == "hello");
assert(ptr.use_count() == 1);
```
