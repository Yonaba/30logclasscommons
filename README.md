30logclasscommons
=================

This repository provides a plugin for compatibility between the object orientation library [30log](https://github.com/Yonaba/30log) and [Class-commons](https://github.com/bartbes/Class-Commons).

##Download

Via Git:

````
git clone git://github.com/Yonaba/30logclasscommons --recursive
````

*Note*: Do not omit the `--recursive` in order to retrieve the submodule files.

## Usage
Copy the files [30log.lua](https://github.com/Yonaba/30logclasscommons/blob/master/30log.lua) and [30logclasscommons.lua](https://github.com/Yonaba/30logclasscommons/blob/master/30logclasscommons.lua) inside your project folder. It is strongly recommended to keep them close each other, in the same directory.<br/>

To include it in your code, just use:

```lua
require '30logclasscommons' 
````

It will internally call [30log.lua](https://github.com/Yonaba/30logclasscommons/blob/master/30log.lua), and return a global table named `common`. From now on, class can be created via:

```lua
class = common.class(name, prototype, superclass)
````

and instances can be created via:

```lua
instance = common.instance(class, ...)
````

See [Class-Commons specification](https://github.com/bartbes/Class-Commons/blob/master/README.md) for more details.

##Testing
The actual plugin can be tested against [Class-Commons implementation rules](https://github.com/bartbes/Class-Commons/blob/master/SPECS.md). You can run these test on your own using the following command from the root directory:

````
lua tests/tests.lua 30logclasscommons_test
````

##Contributors
The original implementation of this plugin was made by [TsT2005](https://github.com/Yonaba/30log/pull/1).

##LICENSE
The [MIT License](http://www.opensource.org/licenses/mit-license.php) (MIT)<br>
Copyright (c) 2012-2013 TsT, Roland Y.

> Permission is hereby granted, free of charge, to any person obtaining a copy of
> this software and associated documentation files (the "Software"), to deal in
> the Software without restriction, including without limitation the rights to
> use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
> the Software, and to permit persons to whom the Software is furnished to do so,
> subject to the following conditions:
> 
> The above copyright notice and this permission notice shall be included in all
> copies or substantial portions of the Software.
> 
> THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
> IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
> FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
> COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
> IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
> CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/Yonaba/30logclasscommons/trend.png)](https://bitdeli.com/free "Bitdeli Badge")