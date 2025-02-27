# Short String Packer

Implement a simple but effective compression scheme for short, simple strings

## Setup

Make sure you have a Github account, and setup your public and private SSH keys for password-less authentication from your local machine to Github.

1. **Fork** this Github project to your your own account. Then, **clone** your fork to your local machine.

```sh
git clone git@github.com:[your-github-username]/hw-data_packer.git
```

2. **Set your local ruby version** for the project folder using `rbenv`

e.g., for Ruby 3.4.2:

```
rbenv local 3.4.2
```

This creates a `.ruby-version` file in the root of your project directory.

3. Run `bundle install` to install the package dependencies listed in `Gemfile`. After bundling, you should see a `Gemfile.lock` file appear in your project directory.

## Overview

In this assignment, you must write the code needed within two methods found in the file `short_string_packer.rb`:

- The `pack(str)` method must take a string called `str` and return an Integer
- The `unpack(packed)` method must take an Integer called `packed`, decompress it and return the string that was originally compressed

## Details

Types:

- `str`: A short String that only contains lowercase characters 'a' - 'z' (no spaces, digits, uppercase, symbols, etc.)
- `packed`: An integer of type Integer

Methods:

- `pack(str)`: Realize that the 26 letters 'a'-'z' don't need to use all the bits available in a UTF-8 character. You can use this to compress a string by packing the bits of each character together:
  - take each letter of `str`, convert it to a number from 1-26
  - take the bits of each number have created and *shift* them appropriately, and use a binary operation to pack them together into a single Integer called `packed`
- `unpack(packed)`: Reverse the process above by accepting a packed Integer and returning the reproduced String

## Coding rules

- Do not use any external libraries (gems)
- Do not write code anywhere outside of the two methods of `short_string_packer.rb`
- Do not use any for/while loops. ONLY use functional iterators: `.map`, `.each`, `.reduce` etc.
- Run `rubocop` on your code to ensure that it is formatted correctly

## Testing

Test your solution by running the test *specification* file:

```sh
ruby packer_spec.rb
```

Your final solution should see all tests passing:

```sh
$ ruby packer_spec.rb
Run options:

# Running:

.......

Finished in 0.001401s

7 runs, 7 assertions, 0 failures, 0 errors, 0 skips
```

## Submission

On Canvas, **submit a URL to your git repository**.
