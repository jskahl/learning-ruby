# Debugging

Debugging manually in Ruby isn't different from another languages. Printing values that are probably not receiving the correct value until you check the error source is the optimal way here.

## p

You can use the `p` statement to print values and inspect them, since `puts` will print a blank line when the value is `nil` and it will always *return* `nil`. `p` will always return the *actual* value. Always. This happens because it is a combination of `puts` and the `#inspect` method.


## Pry

Pry is a Ruby gem that creates a IRB like in your terminal when you run the code, if you have the gem installed, required it and called it inside your code.
The recommended gem for debugging is the `pry-byebug`, which includes `Pry` as a dependency. It adds step-by-step debugging and stack navigation.

You can install it by running `gem install pry-byebug` in your terminal. Then you can `require 'pry-byebug'` at the top of your code and then call it anywhere in your code using `binding.pry`. When you run the ruby script containing this two requisites it will open a console for you to debug the code manually. Keep in mind that pry will only be able to check expressions that happened before it was called.

I haven't used nothing like this before and it is pretty interesting to see it and tinker with it. It can really helps when debugging, avoiding a zillion `p`'s or `puts`'s across the code.
The course says that JavaScript has something similar called `breakpoint` but I didn't got to see it yet in my JS code.

In the Pry IRB you can use some cool commands to see how the code progresses by something you changed in the IRB-like console or just to see it running and check exactly where and when the error appears. 
You can call the `next` command to progress one line, it stops after evaluating the whole line.
You can call the `step` command that progress one line by default, but you can pass an integer as an argument for the quantity of lines you want it to progress.
