# Variables

Variables in Ruby are not really different from other languagues.
The variable declaration pattern is always in `snake_case` and they are mutable. A non-mutable variable, a constant, can be declared just by using `SCREAMING_CASE` - although it can be declared by just setting the first character to uppercase, the pattern is to use it in all the naming.

It also has interesting arithimetic assignment operators that I don't recall to see in any programming languagues:

``` ruby
number = 2

number += 2 # => 4
number -= 2 # => 2
number *= 2 # => 4
number /= 2 # => 1
```

It may exist on Python. If yes I just dont't remember, but it is plausible.

## Referencing problem

The course also says about the referencing variables in variables. As it can be a pretty common thing when dealing with, let's say, some kind of a form, defining a variable with another variable and then mutating the first variable can lead to two different variables values, check it:

``` ruby
name = "Jhon"
user_name = name

puts name # => "Jhon"
puts user_name # => "Jhon"
```

Everything is fine until here! both variables are 'Jhon'. But now let's say that Jhon wanted to use his surname as its username:

``` ruby
name = "Jhon"
user_name = name

[...]

name = "Doe"

puts name # => "Doe"
puts user_name # => "Jhon"
```

See? It changed the `name`, but the `user_name` stayed the same. I know this wouldn't happen in a real context but it does the job in explaning the problem.

This happens because, firstly, the variable `name` *pointed* to the memory adress where the string "Jhon" was stored and `user_name` pointed to this exact same adress, since it was pointing to the `name` variable.
Then Jhon changed his name, so, as it happens in Ruby, the string was changed and also was its adress. The `name` adress changed, but the `user_name` adress didn't.
This is pretty interesting to understand how things works under the hood!

To avoid this kind of conflict, you can use the suffix `!` in the method you use on the variable object and it will reflect on the associated variables.

``` ruby
name = "Jhon"
user_name = name

[...]

name.upcase!

puts name # => "JHON"
puts user_name # => "JHON"
```

I don't really know if there is a way to do it but for changing the value itself. It does make sense to have because you are theorically changing the string by using the `upcase` method, but I tried with the `concat` method and `sub` method but it didn't let me so I think it has something to do with what kind of method it is. I do not know but it will problably click at some moment or it will be explained here in this repo in the future.

## Data gather

To gather data in the run time the variable value must be the keyword `gets`. It is usually used with the `chomp` method because, when entering data, the enter key goes together in the string, and this method removes the last carriate (`\n`).

``` ruby
irb(main):001> name = gets
ola
=> "ola\n"
irb(main):002> name = gets.chomp
ola
=> "ola"
irb(main):003> name << ', mundo!'
=> "ola, mundo!"
```

## Scopes

The general ideia of a scope I will not explain deeply but, basically, the **inner scope can acess the outer scope but the outer scope *cannot* acess the innerscope**

## Variable types

### Constant

Already spoke of it. Declare it in `SCREAMING_CASE`.
It can't be declared inside of a method definition.

### Global

Global variables are available throughout your entire app, with the prefix `$`, like `$my_var = 'yay'`.
