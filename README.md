mr_version
===========

Mr. Version is a simple Ruby library for encapsulating version numbers in your applications
or libraries.

It presents a simple API for incrementing and decrementing version numbers so you can add
them to Thor/Rake tasks, Capistrano deployments or any other Ruby code.

Why?
----

The philosphy behind MrVersion is that maintaining and updating version numbers shouldn't be
a burden of your Ruby applications and libraries, or your developers. You shouldn't have to
think twice about when to increment your version, how to or where. And you damn well shouldn't
have to manually change constants buried inside of your library.

The default setup for this library tracks software based on [Semantic Versioning](https://github.com/mojombo/semver/blob/master/semver.md). We don't think
this is the end all, be all of version numbers but its a good baseline assumption. I'm baking
customization in so you can change how your version number is parsed and formatted.

Features
--------

* Access version number via version object in your application.
* Helps automatically increment version numbers during deployments.
* **SOON** Support custom parser expression and format string.
* **SOON** Marshall to simple YAML file for persistance.
* **SOON** Support Git tagging during increment/decrement.

Examples
--------

    require 'mr_version'

    version = MrVersion::Version.new '1.0.2'

    version.major == 1
    version.minor == 0
    version.patch == 2
    version.append = "rel"
    version.append << "_"
    version.prepend = " by cheapRoc"
    version.major = 2
    version.minor = 0
    version.patch = 3
    version.number == '2.0.3'
    version.to_s == 'rel_2.0.3 by cheapRoc'
    version.patch.increment == '4'
    version.number == "2.0.4"
    version.info == "rel_2.0.4 by cheapRoc"

Install
-------

```gem install mr_version``` or ```gem "mr_version"```

Author
------

Original author: Justin Reagor (cheapRoc)

License
-------

(The MIT License) Copyright (c) 2013 Justin Reagor (cheapRoc)

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

In other words, don't be a dick. Give attribution where appropriate.
It'll be much appreciated.
