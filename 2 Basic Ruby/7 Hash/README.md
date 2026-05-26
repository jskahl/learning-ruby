# Hash

Hash, just like the array, is a list of data that share some similarity with objects in Javascript or dictionaries in Python.

An array is an *ordered list*, which means that to access an element inside of it you would have to give the exact position of it in the list. Like `arr[3]`to get the 4º item inside the list.
In the other hand, to get an item inside an hash you give *the items key*, since every element inside an hash is composed by the **key-value** pattern. check it:

``` ruby
my_hash = {
	"First element" => "apple",
	"Second element" => 12,
	"Third element" => [1, 3, 6],
	"Third element" => {} # => empty hash
}
```
You can see that it was declared just like any variable and then it was attributed to it an *hash* by using the `{}` special characters. The `key` can be any value type: arrays, integers, floats, strings and also symbols!

``` ruby
my_hash = { 9 => "nine",
	:six => 6,
	[1, 2] => "array!",
	0.5 => "float"
}
```

To access it you use the same pattern as in an array: `my_hash[9]` with `9` being the key, not a position. or: `my_hash[[1,2]]`.

When accessing a non-existing value in the hash it will silently return a `nil` value. To avoid this, there is a hash method called `#fetch`, which will return an error message. You can also give an second argument that will be the return default value if the first value does not exist inside the hash:

``` ruby
hash = { "a" => "b" }

hash.fetch("value that does not exist", "default return value")
```

You can also append an value to the hash by defining it:

``` ruby
hash["new_key"] = "new_value"
```

Following this same logic, you can change the value of an existing key by just giving it a new value:

``` ruby
hash["new_key"] = "newer_value"
```

You can also remove an key-value pair from the hash by using the `#delete` method, which returns the value of the given key when deleted:

``` ruby
hash.delete("new_key") # => "newer_value"
```

The values and keys from a hash can be obtained by simply calling the `#values` and `#keys` methods, which returns an array of the values or keys:

``` ruby
hash = {
  "a" => "b",
  "c" => "d"
}

hash.keys # => ["a", "c"]
hash.values #=> ["b", "d"]
```

Merging two hashes can be pretty easy, by just calling the `#merge` method:

``` ruby
hash1 = { "a" => 100, "b" => 200 }
hash2 = { "b" => 254, "c" => 300 }
hash1.merge(hash2) # => { "a" => 100, "b" => 254, "c" => 300 }
```

You can note that the keys that are the same were reaally merged. When it happens, the hash that is being merged (in this case the `hash2`) has the key that will overwrite!


The convention when using hashes in Ruby is to use **symbols** when creating the keys, since they has a fixed space in memory, different than strings.

They can be declared like this:

``` ruby
# 'Rocket' syntax
american_cars = {
  :chevrolet => "Corvette",
  :ford => "Mustang",
  :dodge => "Ram"
}
# 'Symbols' syntax
japanese_cars = {
  honda: "Accord",
  toyota: "Corolla",
  nissan: "Altima"
}
```

The *rocket* syntax is used when declaring any kind of key in a hash, even symbols. 
But the *symbols* syntax is only used when declaring a... symbol! as a key.

Besides the more optimized way of declaring hashes keys being symbols, the *symbols syntax* is even more readable, as you can see in the given example above.
