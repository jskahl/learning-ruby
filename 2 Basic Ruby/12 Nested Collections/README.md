# Nested collections

Lists inside of lists. Nested collections are really common when treating data (the nested ones), matrices in math or non-one-dimensional spaces.

## Nested arrays

Nested arrays are simple to look at and understand what exactly is happening. Check it:

``` ruby
matrix = [
	[1, 2, 3],
	[2, 4, 6],
	[3, 6, 9]
]
```

You can access the elements by using the `[x]`, just like this:

``` ruby
matrix[0][2]
# => 3
```

If you try to access a non-existent nested element — i.e. a list element that is nested, like `[1, 2, 3]` — it will raise an `NoMethodError`. But just like the arrays, if you try to access an non-existent element inside an array, it will just return `nil` as a value.

If you want `nil` as a return value for when accessing non-existing nested element indexes, you can use the `#dig` method:

``` ruby
matrix[3, 0] # => NonMethodError
matrix[2, 4] # => nil

matrix.dig(3, 0) # => nil
matrix.dig(0, 4) #=> nil
```

### Creating nested arrays

To create an array you can use the `#new` method from the `Array` class! like this: `Array.new(3)` <- this will generate an array filled with three (3) `nil` values, because it fills the array `x` times with `y` element as in `Array.new(x, y)`. You could think that to create a nested array you would just need to do something like this: `Array.new(3, [])`.
If you thought of this you are *right and wrong*.

The `#new` method from the `Array` class has the second parameter as a immutable object. Because of this, using mutable objects as the parameters will cause an effect that, when changing one element of the array, all elements will be changed to the given value.
To create a immutable array of mutable objects you would need to pass the fill value via block.

``` ruby
nested_arrays = Array.new(3) { Array.new(2) }
#=> [[nil, nil], [nil, nil], [nil, nil]]
nested_arrays[0][0] = 1000
#=> 1000
nested_arrays
#=> [[1000, nil], [nil, nil], [nil, nil]]
```

if you had created it normally:

``` ruby
nested_arrays = Array.new(3, Array.new(2))
#=> [[nil, nil], [nil, nil], [nil, nil]]
nested_arrays[0][0] = 1000
#=> 1000
nested_arrays
#=> [[1000, nil], [1000, nil], [1000, nil]]
```

## Iterating over nested arrays

Iterating over nested arrays is iterating over the most superficial level of the array. If you just need all the values, you can use the `#flatten` method, that returns the nested array... *flatted*. It will make all nest just one long array! like:

``` ruby
matrix = [
	[1, 2],
	[3, 4]
]

matrix.flatten
# => [1, 2, 3, 4]
```

## Nested hashes

Nested hashes are just like nested arrays, check this examples using the *symbols syntax*:

``` ruby
users = {
	jhon: {
		age: 19,
		height: 1.89,	
	},
	
	jack: {
		age: 29,
		height: 1.99,	
	},
}
```

You can access the hash elements just like arrays. Since the given hash example is using symbols, you can access them with the `[:symbol]`, so: `users[:jack][:age]` will return `29`.

The same problem with the `NoMethodError` happens with hashes as it happens with arrays. You can just use the `#dig` method to avoid it.
