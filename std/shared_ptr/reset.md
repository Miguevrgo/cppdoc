---
symbol: std::shared_ptr::reset
header: <memory>
since: C++11
---

Replaces the managed object.

## Usage

```cpp
void reset() noexcept; (1)

template<class Y>
void reset(Y* ptr); (2)

template<class Y, class Deleter>
void reset(Y* ptr, Deleter d); (3)
```

(1) Releases ownership of the currently managed object, if any; `*this` becomes empty, equivalent to `shared_ptr().swap(*this)`.
(2) Replaces the managed object with `ptr`, using `delete` as the deleter; equivalent to `shared_ptr<T>(ptr).swap(*this)`.
(3) Same as (2) but destroys the previous object using the custom deleter `d`.

In each case, if `*this` was the last owner of the previously managed object, that object is destroyed.

## Time complexity

O(1), not counting the destruction of the previously managed object.

## Examples

```cpp
#include <cassert>
#include <memory>

auto ptr = std::make_shared<int>(42);
assert(ptr.use_count() == 1);

ptr.reset();
assert(ptr == nullptr);
assert(ptr.use_count() == 0);

ptr.reset(new int{7});
assert(*ptr == 7);
```
