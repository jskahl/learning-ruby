# Loops

There are some ways to write a *loop* in ruby:

- `loop`
- `while`
- `for`
- `#times`
- `until`
- `upto`
- `downto`

## Loop loop

The `loop` loop is a loop that does not stop until you explicit asks it to stop, with the `break` command:

``` ruby
irb(main):001> i = 0
irb(main):002* loop do
irb(main):003*   puts i
irb(main):004*   i += 1
irb(main):005*   break if i == 10
irb(main):006> end
```

This is not a commonly used loop, so there are problably better options, like:

## While loop

The `while` loop is just as it is in any proggraming language: a loop that just stop if the given condition is true.

``` ruby
irb(main):001> i = 0
irb(main):002* while i <= 10 do
irb(main):003*   puts i
irb(main):004*   i += 1
irb(main):005> end
```

With these two examples of two types of loops that does the same job, it is possible to see that the `while` is way easier to read than the `loop` loop. Maybe it is understandable with these kind of code but if you scale its complexity it may be hard to read the `loop` one.

## Until loop

Since there it is a *'reverse if'* for better human readability, there is also a *'reverse while'* that keeps the loop **until the given condition is false**! This kind of function happens so that the use of special characters - in this case, the logical expression `!` - is eliminated from the code.

Check it:

``` ruby
irb(main):001> i = 0
irb(main):002* until i > 10 do
irb(main):003*   puts i
irb(main):004*   i += 1
irb(main):005> end
```

## For loop

The `for` loop can iterate through a collect of information, like an array or an range, check it:

``` ruby
irb(main):002* for i in arr
irb(main):003*   puts i
irb(main):004> end
# or
irb(main):005* for i in 0..5
irb(main):006*   puts i
irb(main):007> end
```

## Times loop

The `#times` method is a integer object method that makes a loop X times, being X the number where the method is being called, so:

``` ruby
irb(main):005* 3.times do |i|
irb(main):006*   puts i
irb(main):007> end
```

In the example above the `|i|` in the variable that is receiving the iterated number.

It starts the counting at zero.

## Upto and Downto loops

`#upto` and `#downto` are also integer methods so they can be called on an integer object. They loop (up or down) to the number given as parameter, starting at the integer object where it is being called, so:

``` ruby
irb(main):001> 3.upto(6) { |i| print i }
3456=> 3
irb(main):003> 3.downto(0) { |i| print i }
3210=> 3
```
