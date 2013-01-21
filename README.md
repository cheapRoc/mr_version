mr_version
===========

Mr. Version is a simple Ruby library for versioning applications or libraries.

It encapsulates a simple API for incrementing and decrementing version numbers so you can add
them to Thor/Rake tasks, Capistrano deployments or any other Ruby code.

Why?
----

The philosphy behind MrVersion is that maintaining and updating version numbers shouldn't be
a burden of your Ruby applications and libraries, or your developers. You shouldn't have to
think twice about when to increment your version, how to or where.

The default setup for this library tracks software based on Semantic Versioning. We don't think
this is the end all, be all of version numbers but its a good baseline assumption. Eventually
we'll provide customization to change how your version number is formatted.

Features
--------

* Automatically increment version numbers during deployments
* Access version number via version object in your application
* Marshalls to simple YAML file for persistance
* Supports Git tagging during increment/decrement

Examples
--------

    require 'mr_version'

    version = Version.new Rails.root.join('version.yml')

    Version.number == "2.0.3"
    Version.append << "rel_"
    Version.prepend << " by cheapRoc"
    Version.major == '2'
    Version.minor == '0'
    Version.patch == '3'
    Version.patch.increment == '4'
    Version.number == "2.0.4"
    Version.info == "rel_2.0.4 by cheapRoc"

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
