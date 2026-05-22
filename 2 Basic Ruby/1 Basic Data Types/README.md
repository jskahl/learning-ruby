# Ruby Basics

## Basic Data Types
Mostly all of tests on the content studied here in this chapter - or the whole module -, will be made using the `irb`! So, don't expect any code besides the exercises that early...

Since Ruby is a very object-oriented programming language, everything inside of it *is an object. everything.* The most common data types are know by everyone who did some programming, so I will be briefly in the explanations on most of the notes.

The basic data types are: numbers - integers and floats -, strings, ==symbols==, and booleans - true, false and ==nil== (note that I highlighted the ones I will take some considerable notes).

### Literally everything is an object
Something that I don't remember seeing in other programming languages is the possibility to *directly apply methods into values without variables*.

I was pretty used to see things like this - even in interactive environments -:

``` node
str = "Hello"

str.toUpperCase()
// 'HELLO'
```

but in Ruby I have to declare it when testing, so:
``` ruby
'Hello'.upcase
# 'HELLO'
```

So this was news to me. And, as explanation, this happens because *everything* is an object. You can apply a string method directly to a string because it is an object. Even though this is very obvious, it was something new I had to took some note on.

Here it is some functions I wanted to mark well:

``` ruby
# strings
"hello".capitalize # => "Hello"
"hello".include?("ell") # => true
"".empty? # => true
"hello;world;good;morning;".split(";") # => ["hello", "world", "good", "morning"]
"he77o".sub("7", "l") # => "hel7o"
"he77o".gsub("7", "l") # => "hello"
"hello".insert(-1, ", world!") # => "hello, world!"

# concatenation, three ways:
"hello" + ", " + "world!" # => "hello, world!"
"hello" << ", " << "world!" # => "hello, world!"
"hello".concat(", ").concat("world!") # => "hello, world!"

# interpolation
name = "world"
puts "hello, #{name}!" # => "hello, world!"
puts 'hello, #{name}!' # => "hello, #{name}!"
# you MUST use double quotes for interpolation!

# substrings
"hello"[0] # => "h"
"hello"[0..1] # => "he"
"hello"[0, 4] # => "hell"
"hello"[-1] # => "o"


# numbers
1 / 2 # => 0
1.0 / 2 # => 0.5
1 / 2.0 # => 0.5
1.0 / 2.0 # => 0.5

# ruby will always round it to the integer number
3.3.to_f # => 3
3.9.to_f # => 3
3.to_i # => 3.0

3.even? # => false
3.odd? # => true
```

### Symbols

So, here the explanation is that symbols are pretty much a string... but differently.
A string value has to be stored every time it is changed, even if the same value is already stored in other string. Enter *symbols*. Symbols are only store once, making them faster when having to access it.

This is a great tool for data structure and algorithms, using them in hashes.

To declare a symbol, just add a colon before the name (which must be in `snake_case`):

``` ruby
# symbol
:my_symbol

# symbol with hash
hash = {
	:item_one => "Item 1",
	:item_two => "Item 2"
}
```

## Nil
In Ruby, there are three booleans value (what?). They are `false`, `true` - expected - and `nil`. Since everything in Ruby is an object: *everything* has a **return value**. So, when something is nor true or false: it returns `nil`!
