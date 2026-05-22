# Arrays

There are two main ways of creating arrays in Ruby:

``` ruby
my_array = [1, 2, 3]

# or using the `Array` class

other_array = Array.new
```

The first case is pretty common on other programming languages, and the second one is not *that* common. It can also be used to fill the array in the `#new` method parameters with up to 2 arguments being the initial size and the default value, respectively:

``` ruby
Array.new # => []
Array.new(3) # => [nil, nil, nil]
Array.new(3, 7) # => [7, 7, 7]
```

## Acessing elements

You can can get an array element by calling the array together with the element index, like: `array[x]`. Calling a invalid position will return `nil`. It starts at 0, since it uses zero-based indexing, the distance the element is from the start of the array adress.

``` ruby
numbers_array = [1, 2, 3, 4, 5]

numbers_array[0] # => 1
numbers_array[2] # => 3
numbers_array[-1] # => 5
numbers_array[-2] # => 3
```

You can get the first and last elements using the `#first` and `#last` array methods. They can also receive an integer as an argument for the range of the get, like:

``` ruby
arr = [1, 2, 3]

arrr.first # => 1
arrr.last # => 3
arrr.first(2) # => [1, 2]
arrr.last(2) # => [2, 3]
```

## Adding and removing elements

You can use the array method `#push` and the shovel operator `<<` to add an element to the end of the array. The `#unshift` method adds an element at the beginning of an array and returns the array, just like the `#push`.

``` ruby
arr = [1]

arr.push(2, 3) # => [1, 2, 3]
arr << 4 # => [1, 2, 3, 4]
arr.unshift(0) # => [0, 1, 2, 3, 4]
```

The `#pop` method removes the *last* element of an array and returns it. The `#shift` method removes the *first* element of an array and returns it. Both these methods can take integer as arguments for the range of the action.

``` ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8]

arr.pop # => 8
arr # => [1, 2, 3, 4, 5, 6, 7]
arr.pop(2) # => [6, 7]
arr # => [1, 2, 3, 4, 5]

arr.shift # => 1
arr # => [2, 3, 4, 5]
arr.shift(2) # => [2, 3]
arr # => [4, 5]
```

## Adding and subtracting arrays

In Ruby you can 'merge' two arrays by using the `+` logic operator or the `-`. You can also use the `#concat` method.

``` ruby
a = [1, 2]
b = [2, 3]

a + b # => [1, 2, 2, 3]
a.concat(b) # => [1, 2, 2, 3]
```

Now, to get the *difference* between two arrays you use the `-` operator, where the result will be first array minus the elements of the second array:

``` ruby
a = [1, 2, 2, 3]
b = [2]

a - b # => [1, 3]
```

There are some methods usable in array that pretty much say what them do by themselfs:

``` ruby
irb(main):001> [].empty?
=> true
irb(main):002> [[]].empty?
=> false
irb(main):003> [1, 2].empty?
=> false
irb(main):004> [1, 2, 3].length
=> 3
irb(main):005> [1, 2, 3].reverse
=> [3, 2, 1]
irb(main):006> [1, 2, 3].include?(3)
=> true
irb(main):007> [1, 2, 3].include?("3")
=> false
irb(main):008> [1, 2, 3].join
=> "123"
irb(main):009> [1, 2, 3].join(", ")
=> "1, 2, 3"
```
