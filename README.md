# Randint

* https://github.com/awesome/randint

## DESCRIPTION:

Creates positive integer with specified number of digits (i.e., specified "length" when coverted to string)

## FEATURES:

* Specify random number generator: Kernel (default), Random or SecureRandom
* Kernel#rand and Random#rand are essentially the same and both included for ocd

## REQUIREMENTS:

*  Ruby >= 1.9.3

## INSTALL:

    $ gem install 'randint'

## USAGE:

    Randint.create(3)
    #=> 111
    Randint.create(50, SecureRandom)
    #=> 45777499250739151797487680834117802518338464049274

## LICENSE:

(The MIT License)

Copyright (c) 2014 SoAwesomeMan

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
