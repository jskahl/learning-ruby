# Condional logic

## If statements

A **conditional** is a block of a code that is only executed if a given condition is true.

In Ruby it can be executed like this:

``` ruby
if some_value == true # here just 'some_value' is enough.
    puts 'Some value exists!'
end

# or

puts 'Some value exists!' if some_value == true

```

Going against some other languages, the only false values in Ruby are `false` and `nil`! All the rest is `true`.

`elsif` is also valid when it is needed.

``` ruby
if age >= 18
    puts 'You can drive now!'  
elsif age >= 28
    puts 'You should review your driving license!'
else
    puts 'You can't drive!'
end
```

The logic operators are pretty much the same as javascript:

- `==` - is equal to
- `!=` - is different than
- `&&` - both true
- `||` - one or another is true
- `>=` - greater or equal to
- `<=` - lower or equal to
- `!` - as prefix to get the reverse boolean value

There it is also the `#eql?` method that checks both value and types, so

``` ruby
3.eql?(3.0) # => false
```

Both *3* and *3.0* have the same value, but they have different types (integer and float, respectively) so it is false.

Strangely, there is another method called `#equal?` which compares if both objects are the same object in memory, so:

``` ruby
a = 3
b = 3

a.equal?(b) # => true
```

BUT, it works like this because both variables are pointing to the same integer in the memory since integers are not mutable. Strings are muttable, so they can change and, thinking in this direction: they have different objects even with the same value:

``` ruby
a = "hello"
b = "hello"

a.equal?(b) # => false
```

You can also use ternary operators just as in javascript:

``` ruby
age = 19
response = age < 18 ? 'Not an adult' : 'You're an adult!'
```

There is also something called **'Spaceship Operator'**, which is a operator that can return 3 numerical values:

- -1 if the value on the left is less than the value on the right
- 0 if the value on the left is equal to the value on the right
- 1 if the value on the left is greater than the value on the right

See:
``` ruby
irb(main):002> 5 <=> 10
=> -1
irb(main):003> 10 <=> 10
=> 0
irb(main):004> 10 <=> 5
=> 1
```

## Case statements

This is really usual in programming languages, it is written in ruby like this:

``` ruby
irb(main):013* case grade
irb(main):014* when 'A'
irb(main):015*   puts 'Very well'
irb(main):016* when 'D'
irb(main):017*   puts 'Oh no'
irb(main):018* else
irb(main):019*   puts 'YOU SHALL NOT PASS! -Gandalf'
```

## Unless statements

These are pretty interesting.
It is written like this:

``` ruby
age = 19
unless age < 18
  puts "Get a job."
end

# or like this

puts "Get a job" unless age < 18
```

it works as a reverse `if`: it only executes the code if the value is false.

It exists for when the condition is only to happen when the value evaluates to `false`, it, theorically, makes the code more readable than when using `if !value`. I am really used to reading and writin `if !value` and it is pretty fixed in my mind so I don't know how this will go through my thought process when coding or reading ruby code.

---

All of the tricks or strange things that seems to be end up summing up to a more solid and readable code, it is basically all english and I think that this is what makes this language so popular and so evangelizable!
