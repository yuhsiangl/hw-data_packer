# Short String Packer

Implement a simple but effective compression scheme for short, simple strings

**Important: Please DO NOT FORK this project to write your solution, because others will be able to see your solution**

## Download
Clone this project to your personal repo:
`$ git clone https://github.com/ISS-Security/hw-data_packer`

## Overview

In this assignment, you must write the guts of two methods found in the file `short_string_packer.rb`:
- The `pack(str)` method must take a string called `str` and return a Fixnum integer
- The `unpack(packed)` method must take a Fixnum called `packed`, decompress it and return the string that was originally compressed

## Details
Types:
- `str`: String that only contains lowercase characters 'a' - 'z' (no spaces, digits, uppercase, symbols, etc.)
- `packed`: An integer of type Fixnum (not Bignum or any other integer type)

Methods:
- `pack(str)`: Realize that the 26 letters 'a'-'z' don't need to use all the bits available in a UTF-8 character. You can use this to compress a string by packing the bits of each character together:
  - take each letter of `str`, convert it to a number from 0-25
  - take the bits of each number have created and *shift* them appropriately so you can use the binary *AND* operation to put them together into a single number called `packed`
- `unpack(packed)`: Reverse the process above

## Coding rules
- Do not use any external libraries (gems)
- Do not write code anywhere outside of the two methods of `short_string_packer.rb`

## Testing
Test your solution by running the test *specification* file:
```
$ ruby packer_spec.rb
```
As you write each method, different tests will pass or fail. Your final solution should see all tests passing:
```
$ ruby packer_spec.rb
Run options:

# Running:

.......

Finished in 0.001401s

7 runs, 7 assertions, 0 failures, 0 errors, 0 skips
```
