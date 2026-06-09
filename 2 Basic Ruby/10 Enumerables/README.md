# Enumerables

Enumerables are built-in methods inside Ruby to work with *lists, i.e. arrays and hashes*. There are a considerable piece of iteration code that is pretty common inside a day-to-day programming.

Basically, they are methods built for making the implementations of loops much easier. There are plenty of methods for the most variety of loops you could run into. If them don't fit your case you should review you thought process because you're probably overthinking it.

This is not a Ruby thing but, again, I am discovering something new with Ruby: basically **all** use cases of any kind of repeating code has builtin methods or functions or anything that is native of the language and you can call it, and this is a GREAT north pole for knowing when you are overthinking it.

I will just pass through the main basic enumerable methods and explain them and display some use cases for them.

## Each

The `#each` method is really simple: it just iterates over an list and executes the given code to every item.

``` ruby
list = [1, 2]

list.each { |number| puts "The number is #{number} }

# => The number is 1
# => The number is 2
```

In this code, `each` is the method and it receives the code to execute inside the block `{ ... }` — which is the equivalent to `do ... end`. The `|number|` is the block variable, that is the item being iterated, and the following code is the code being executed for every item.

You can also use this method for hashes, but instead of giving just one block variable you make it two: `|key, value|` and then nothing changes for the rest of the code.

## Each with index

The `#each_with_index` method is pretty similar to the `#each` method. It iterates over all the given list and executes the code block for every item.
The difference between them is that it also has the item index! It's probably mostly used when dealing with arrays, but it works with hashes too.

``` ruby
fruits = ["apple", "banana", "strawberry", "pineapple"]

fruits.each_with_index { |fruit, index| puts fruit if index.even? }

#=> apple
#=> strawberry
#=> ["apple", "banana", "strawberry", "pineapple"]
```

If you use it in a hash it will return the key and value inside an array, in the said order. And it will return the index as it would do with an array, also.

## Map

Since the `#each` method just returns the original list, and does not modify it, we need a method that modifies a list. This is a pretty common scenario and the `#map` method fill it perfectly.
What it does is that it returns a new list, based on the original one, with all items modified according to the code block given:

``` ruby
array = [1, 2, 3]

array.each { |number| number + 1 }
# => [1, 2, 3]
```

The each method does not work here, so we can just use `#map` to return an new array:

``` ruby
array = [1, 2, 3]

array.map { |number| number + 1 }
# => [2, 3, 4]

puts array
# => [1, 2, 3]
```

Now it returned a modified array! But, what about the original one? It still intact, non-modified. Gratefully, you can modify it with map by just using the map *bang* method: `#map!`.
``` ruby
array = [1, 2, 3]

array.map! { |number| number + 1 }
# => [2, 3, 4]

puts array
# => [2, 3, 4]
```

## Select

The `#select` method — or `#filter` — returns the original list selecting the items based on the code block:

``` ruby
array = [5, 11, 13, 5]

array.select { |number| number > 10 }
# => [11, 13]

puts array
# => [5, 11, 13, 5]
```

You can see it did not modified the original array. Just as it happens with the map method, it has a bang method: `#select!`. It will do the same job.

## Reduce

The `#reduce` method is using when you need to ***reduce*** a list to a single object: like summing all numbers inside an array.

You could built the given example with the `#each` method, like this:

``` ruby
numbers = [1, 2, 3]
sum = 0

numbers.each { |number| sum + number }

puts sum
# => 6
```

This is not a bad code, but you can reduce it with... *reduce*.

``` ruby
numbers = [1, 2, 3]

numbers.reduce { |sum, number| sum + number }
# => 6
```

See? It receives a **accumulator** firstly as a block variable *and then* the block variable itself. The **accumulator** is the variable that will contain the result of the block code and it is the return value for the `#reduce` method.

You can also set an initial size for the accumulator by passing it as a argument in the reduce method:

``` ruby
numbers = [1, 2, 3]

numbers.reduce(10) { |sum, number| sum + number }
# => 16
```

You can also start arrays or hashes and then adding items to it with `Hash.new` or `Array.new`
