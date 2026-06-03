# Methods

Ruby methods exists for the **DRY** approach - **D**ont't **R**epeat **Y**ourself -. Which is a pattern in programming that says that too much equal code in a database shouldn't exist. Instead, you should recycle the code, creating methods.

Functions and methods are often used with the same purpose: a piece of code that is used many times across a codebase.
Ruby is a purely object-oriented language, and many languages refers to functions as not having an associated object, and methods as having an associated object (being called via an object), function *does not exist* in Ruby!

As already said here: everything in Ruby is an object, so you can call a method in any value in Ruby.

The name convention for an method is the class the method class and the method name itself separeted by an `#`, like `Integer#times`, but it can also be called by just `#times`.

Since everything is an object, even global methods like `puts` or `print` and etc are methods. Object class methods.

An interesting thing about Ruby method calling is that its arguments can be passed with or without the parentheses `()` wrapper.

``` ruby
irb(main):001> puts "Hello!" # => valid
irb(main):002> puts("Hello!") # => also valid
```

A methods can be created with a simple syntax:

``` ruby
def greeting
  "Hello"
end
greeting # => "Hello"

# or

def greeting name = "Stranger"
  "Hello #{name}"
end

# or

def greeting(name="Stranger)
  "Hello #{name}"
end

greeting "José" # => "Hello José"
greeting("José") # => "Hello José"
greeting # => "Hello Stranger"
```

You can see that the methods are returning the string even without the `return` keyword. This happens because Ruby offers implicit `return` for methods, meaning that the method will return the last expression evaluated *even without the `return` keyword*. You can still use the return expression in Ruby, but it will be the last expression that will be evaluated, stopping the code. It can be useful when, by example, having to check for value errors.

The convention for method naming is to use the `snake_case` pattern. It is interesting to start methods with this pattern because names that start with a capital character are constants in Ruby.

Besides the basics of methods naming in Ruby (reserved keywords, starting with a number and etc...), it is possible to use special characters when naming them. `_` is a common one, since the naming convention is in *snake_case*, but the other three are `?`, `!` and `=`, which can be used only in the end of the names. I've already saw the `?` in some methods when the return value is always a boolean one, like `#odd?` or `#even?`.
On the other hand, the `!` methods are the ones that overwrite the value of the given object. So, `my_string.downcase` will not modify the `my_string` variable, but with the *Bang* version method of downcase, `#downcase!`, it ***will*** overwrite it, like this: `my_string.downcase!` will downcase the `my_string` method.
