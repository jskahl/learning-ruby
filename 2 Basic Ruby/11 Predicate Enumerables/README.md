# Predicate enumerable methods

Predicate enumerable methods are basically the same thing as the enumerable methods but they are **predicate** methods, which means they will return either `true` or `false`, with the `?` at the end of the method name.

I will just go over the mentioned methods in the course for this category.

## Include

The `#include?` method basically returns true or false if an list of items (hash or array) contains a specific value that is given as an argument to the method:

``` ruby

numbers = [1, 2, 3]

numbers.include?(2)
# => true
```

It is pretty simple to use and avoid making a loop with a condition inside of it.

## Any

The `#any?` method receives a code block with a condition. It returns true or false according to the condition inside the block.

``` ruby

numbers = [1, 2, 3]

numbers.any? { |number| number > 2 }
# => true

numbers.any? { |number| number > 3 }
# => false
```

## All

The `#all?` method here is pretty intuitive and similar just as the `#any?` method. It returns true if *all the elements* of the list matches the given condition, otherwise it returns false.

``` ruby

numbers = [1, 2, 3]

numbers.all? { |number| number > 0 }
# => true

numbers.all? { |number| number > 1 }
# => false
```

An important thing to note is that, by default, `#all?` returns `true`. Calling it in an empty list will return true.

## None

The `#none?` is the inverse of the `#all?`. If **none** of the elements matches the condition: it returns true.

``` ruby

numbers = [1, 2, 3]

numbers.none? { |number| number > 0 }
# => false

numbers.none? { |number| number > 3 }
# => true
```

## One

You can also check it exactly ***one*** element inside of the list matches the condition with the `#one?` method:

``` ruby

numbers = [1, 2, 3]

numbers.one? { |number| number < 2 }
# => true

numbers.one? { |number| number > 2 }
# => false
```
