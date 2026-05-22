# Input and Output

## Input

Since I already talked about the input method here I will not be explain it.

But, for the sake of it, to get user data you must to the following:

``` ruby
irb(main):009> name = gets
José
=> "José\n"
```

Since I am using the `irb` for this little tests, everything that is displayed, like:

``` ruby
irb(main):014> puts name
José
=> nil
```

has a return value - usually `nil` when the return value is not defined -, this happens because everything is an object so everything must return something.

## Output

You can notice I used `puts` to display the `name` variable, but there is another method to display things! and it is called `print` - as in other any language could have. You can see it works, initially just the same:

``` ruby
irb(main):016> print name
José
=> nil
```

See? It does not have any difference from the `puts` method. It returns the name and then the return value. It is just the same, right? **WRONG**.

Let's remove the separator that the `gets` method adds to the end of the user input (`\n`)

``` ruby
irb(main):017> name = gets.chomp # removes separator
José
=> "José"
```

Now the `name` variable does not have the `\n` at the end of it. Let's compare both `print` and `puts` now:

``` ruby
irb(main):018> puts name
José
=> nil
irb(main):019> print name
José=> nil
```

See? Since it does not have the newline separator, the print method returns the value *without jumping the line*. And that is pretty much all the difference. You can use `puts` to display values and 'format' them by jumping a line in each of them, and use `print` for values you want in the same line. Check it:

``` ruby
irb(main):020> print "Hey!" " How are you?"
Hey! How are you?=> nil
irb(main):021> puts "Hey!", "How are you?"
Hey!
How are you?
=> nil
```

That's it. It is a pretty good thing to know when having to display some things sometimes!

## Files

### Creating a file

To create file objects in Ruby you can use the `File` class. There is two way to create a file object:

Using `File.open`:

``` ruby
File.open("file.txt", "mode") do |file_var|
    # code
end
```

and using `File.new`:

``` ruby
file_var = File.new("file.txt", "mode")
    # code
file_var.close
```

The only difference between these two methods is that the File.open is considered a *block*, since it uses `do ... end` and the File.new **is not** considered a block.

### Reading and writing

To read a file the `mode` parameter must be `r` for reading and `w` for writing and `r+` for both. The default is `r`.

The `file.sysread(x)` method will read *x* characters of the file, starting at the first one.

The `file.syswrite(x)` method will write *x* in the file, starting at the first character, overriding characters.

#### IO class

The `File` class is a subclass of the `IO` class, so it inherits its methods.

You can read everyline of a file by transforming an variable in an array using the `IO.readlines("file.txt")` and then being able to acess, from the array, every line of the file.

The `IO.foreach("file.txt") { ... }` will display line by line of the file.

#### Deleting and renaming

It is pretty intuitive to do so: there is the `File.rename("file_original.txt", "file_new.txt")` to rename the file and also `File.delete("file.txt")` to delete it!

#### Permissions

You can change file permissions using the `file.chmod(perm)` method.

#### Inquiries

You can check if a file exists before opening it by using:

``` ruby
File.open("file.txt") if File :exists?("file.txt")
```

You can also check if the file is really a file or if it is a directory:

``` ruby
File.file?("file.txt") # => true

File :directory?("file.txt") # => false
File :directory?("/home") # => true
```

You can check if the file is zero size - empty -, or the file size:

``` ruby
File.zero?("file.txt") # => false
File.size?("file.txt") # => 3333
```

You can check the file type itself by using `File :ftype("file.txt")`. It can return one of the following:

- file
- directory
- characterSpecial
- blockSpecial
- fifo
- link
- socket
- unknown

You can check when a file was created, modified or last accessed, respectively


``` ruby
File :ctime("file.txt") # => Mon Apr 27 09:54:23 -0700 2006
File :mtime("file.txt") # => Tue Apr 28 15:32:12 -0700 2006
File :atime("file.txt") # => Wed Apr 30 10:52:10 -0700 2006
```

## Directories

Ruby can *also* handle directories! Whereas the `File` class handle all files methods, the `Dir` class handles all directories methods.

To change the directory within a Ruby program you can use the method `Dir.chdir("/path/to/dir")` or find out where you are using `Dir.pwd`

You can list all files and directories in the current directory by using `Dir.entries`

``` ruby
puts Dir.entries("/path/to/dir").join(' ')
```

But this will list all names of files and directories in the same line, even using the `puts` method because it wouldn't have any separator between each string. It will be something like this:

``` ruby
irb(main):001> puts "file1" "dir1" "dir2"
file1dir1dir2
=> nil
```

with a comma separating each strin it would be:

``` ruby
irb(main):002> puts "file1", "dir1", "dir2"
file1
dir1
dir2
=> nil
```

So, for this, we have the `Dir.foreach()` that provides basically the same thing but it separates each string, jumping the line:

``` ruby
Dir.foreach("/path/to/dir") do |entry|
    puts entry
end
```

This will list everything in different lines.

You can also use `Dir["/path/to/dir/*"]` to list every item in the directory and make the listing an array with each item in the directly being an element of the array.

You can also create a directory by using `Dir.mkdir("/path/to/dir")` and/or set permissions right on it with `Dir.mkdir("/path/to/dir", 755)`!

To delete a directory you must use `Dir.delete("dir")`
