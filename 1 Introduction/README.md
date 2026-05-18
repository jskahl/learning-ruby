# Introduction

Ruby is designed for the **programmer happiness**. It was made when back in the day when really verbose languages like Java were in its ascension. It was easier to use than the other common languages thanks to Ruby prepackaging a really large range of useful function into easy-to-use methods.

Ruby is really similar to Python in some ways because both follow many of the same convention.

Ruby has a really great framework called [[Ruby on Rails]], which is really optimized for writing code really fast and more easily - something that was really new in the time (around 2005).

## History

Ruby was created by Yukihiro Matsumoto, A.K.A. "Matz", in Japan in the mid 90's. It was made for more readability and fun for the programmers, preserving the idea that it should be understood by humans first and computers second.

Ruby itself has a considerable level of abstraction, similar to python, but is essencial to learn it before learning any other DSL's like Rails and Rspec.

## Tools

The course provides a chapter of a book that talks about the necessary tools for writing ruby without headache, but I have already installed ruby with `rbenv` and already have all the tools asked in the chapter. No the same tools, but I have _my tools_:

### Text editor
For this one I am using Neovim. It is a text-based editor, i.e. it runs in your shell. I was curious about what it could do and why people used it so I gave it a try and it was awesome. I love the flexibility this text-editor provides and also likes the feeling of *"DIY"* that it gives.

For the Ruby LSP I am using the `ruby-lsp` provided by the plugin Mason.

## Terminal & Shell
I am using foot as a terminal emulator and fish as a shell.

I do not really care about the terminal emulator I am using, it just need to fits all my requirements for, mainly, styling. I change the terminal emulator I am using fro time to time.

Fish is a great shell since it has a bunch of features some shells does not have out of the box, such as command recommendations or search through history using `C-r`.

## Stylish

The course asks for a 2 spaces indenting which I will not be using from the start. I prefer 4 spaces indenting and not 2 for better readability but, eventually, I will try 2 spaces to check if it makes the code harder to read or stays the same. Since it is a **Ruby stylistic convention** I will not go against if it does not bothers me.

Methods, variables or files should always use the `snake_case` formatting.
Classes, on the other hand, uses `PascalCase` formatting. Since Ruby is an "old language", the `PascalCase` formatting could be called `upper CamelCase`.
Constant variables, in Ruby, are defined using `SCREAMING_CASE`. A constant can be defined with just the first character as uppercase, but it is not the convention.
When working with do/end blocks, the convention is to use `{ }` right after the condition and make it all one line, when the code inside the block fits in one.

Comments are all made with the `#` prefix, just like as Python.

One more thing coming from the "people may called *this thing that thing*" series: API could also refer to general documentation.

## Documentation

The course also talks about reading the proper **Ruby Documentation** which is pretty different from any other studying resource I could have used.

The Ruby documentation is, currently, not awesome, which brings us, new ruby learners, to searching for more simplified docs or study material.

There are a thing called **namespace**, which I have never heard of: it basically defines a way to group classes and differentiate from other classes with the same name.
The text provides this example: `ActiveRecord::Base`, here the `::`, a namespace, is used to refer to the `Base` class of the `ActiveRecord` module to differentiate from other classes named `Base`.

Methods could be listed with either a `::` or a `#`. The first one refers to *class methods*, while the second one refer to *instance methods*.

### Instance and Class methods

Since Ruby is a **OOP** language: everything is an object. Knowing this, you can guess that a String is a Class. So you can apply, to a string, methods that already come with the string, *class methods*, or methods that does not came with the string, but is usable in one, *instance methods*.

## Installing Ruby

The course presents a tutorial on how to install Ruby using the `rbenv`

Here it is the step-by-step I took:

1. Updating packages and installing dependencies

1.1 You may already have some of the necessary packages or ruby on its own so it is great to double check it.

The tutorial in the course uses `apt` but I will use `pacman` since I am using Arch Linux.

``` bash
ruby -v	
```
if this code returns anything related to ruby version: you already have ruby installed, congratulations!

if not, follow the next steps:

1.2 Updating the system is the most common action before installing anything. It is even more crucial when using a rolling-release linux distribution, such as Arch Linux

``` bash
sudo pacman -Syu
```
This command will update all of your packages and make sure everything is in the right place.

1.3 As any other package, Ruby has its dependencies, such as C libs or tools for building projects.

Install all dependencies by running:
``` bash
sudo pacman -S gcc make openssl readline zlib sqlite libyaml
```

2. Installing rbenv

1.1 First of all: you need to clone the `rbenv` repository and initiate it so it is properly setted:

``` bash
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
~/.rbenv/bin/rbenv init
```
Now close and open your terminal so all the environment variables are properly loaded

1.2 Now you have to install `ruby-build` plugin to help compile the Ruby bins. You will have to create a directory for the plugin and then download it in the directory created.

Do it by running this:
``` bash
mkdir -p "$(rbenv root)"/plugins
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
```

1.3 Now you can finally check if rbenv is intalled correctly, by running the following command:

``` bash
rbenv -v
```
You should get some output with 'rbenv' followed by some version. If not: you did something wrong.

3. *Actually* install Ruby

3.1 To install Ruby you will need to use rbenv.

So run this command in your terminal:
``` bash
rbenv install 3.4.6 --verbose
```

This command will take a while. The `--verbose` flag will displayed the actions.

3.2 Now you have the a Ruby version installed! But you need to set this version, with rbenv, so every project and everywhere in your system where you have Ruby will use this version *by default*.

Run this to set it with x.y.z being the installed version, in this case 3.4.6:
``` bash
rbenv global x.y.z
```

Now check the Ruby version and check if it installed the right one:

``` bash
ruby -v
```

3.2.1 You can have multiple Ruby versions installed, so you can set a local version in a project level by running:

``` bash
rbenv local x.y.z
```
This will generate a `.ruby-version` file with the provided local version so every ruby program that is run inside of this directory, or deeper, will run with this specific version.

Remember: you need to have the provided version so that you can set it.

## Updating Ruby

You will eventually use more recent versions than the most recent one when you installed rbenv. In order to update Ruby you will have to pull the latest changes in the rbenv git repository.

1. Go to the rbenv directory
2. Pull the latest changes with `git pull`
3. Run the script to set up rbenv for the update:
``` bash
~/path/to/rbenv/bin/rbenv init
```
4. Go to the `plugins/ruby-build` directory, which is inside the rbenv directory
5. Pull the latest changes with `git pull`
6. Now check all available versions to install, by running:
``` bash
rbenv install --list-all
```
7. Now you can install the new desired version of ruby by running:
``` bash
rbenv install x.y.z
```

note: `x` is the major version; `y` is the minor version and `z` is the patch version. This is called **semantic versioning**.
