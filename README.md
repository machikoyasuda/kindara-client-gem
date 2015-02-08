Kindara
--------

  - [![Code Climate](https://codeclimate.com/github/machikoyasuda/kindara-client-gem/badges/gpa.svg)](https://codeclimate.com/github/machikoyasuda/kindara-client-gem)
  - [![Test Coverage](https://codeclimate.com/github/machikoyasuda/kindara-client-gem/badges/coverage.svg)](https://codeclimate.com/github/machikoyasuda/kindara-client-gem)
  - [![Build](http://img.shields.io/travis-ci/machikoyasuda/kindara-client-gem.svg?style=flat-square)](https://travis-ci.org/machikoyasuda/kindara-client-gem)
  - [![Dependency Status](https://gemnasium.com/machikoyasuda/kindara-client-gem.svg)](https://gemnasium.com/machikoyasuda/kindara-client-gem)
  - [![Downloads](http://img.shields.io/gem/dtv/kindara.svg?style=flat-square)](https://rubygems.org/gems/kindara)
  - [![Tags](http://img.shields.io/github/tag/machikoyasuda/kindara-client-gem.svg?style=flat-square)](http://github.com/machikoyasuda/kindara-client-gem/tags)
  - [![Releases](http://img.shields.io/github/release/machikoyasuda/kindara-client-gem.svg?style=flat-square)](http://github.com/machikoyasuda/kindara-client-gem/releases)
  - [![Issues](http://img.shields.io/github/issues/machikoyasuda/kindara-client-gem.svg?style=flat-square)](http://github.com/machikoyasuda/kindara-client-gem/issues)
  - [![License](http://img.shields.io/badge/license-MIT-brightgreen.svg?style=flat-square)](http://opensource.org/licenses/MIT)
  - [![Version](http://img.shields.io/gem/v/kindara.svg?style=flat-square)](https://rubygems.org/gems/kindara)


This gem will allow users to access her own Kindara cycle and day data through the Kindara API.

Using on Command Line
=====

Require gem
  `require "kindara"`

Authenticate
  `client = Kindara::Account.authenticate("YOUR-EMAIL", "YOUR-PASSWORD")`

Pull account information
  `account = Kindara::Account.info(client)`

Account information returns
  - `average_cycle` [float]
  - `average_luteal` [float]
  - `average_period` [float]
  - `username` [string]

Pull all day data
  `days = Kindara::Day.pull(client)`

Day data returns a series of Day objects
  - `date` [date]
  - `updated` [date]
  - `cycle_day` [integer]
  - `temperature` [float]
  - `questionable_temp` [boolean]
  - `temp_shift` [boolean]
  - `no_fluid` [boolean]
  - `fluid_sticky` [integer]
  - `fluid_creamy` [integer]
  - `fluid_eggwhite` [integer]
  - `fluid_watery` [integer]
  - `cervix_height` [integer]
  - `cervix_openness` [integer]
  - `cervix_firmness` [integer]
  - `opk` [0,1]
  - `peak_day` [boolean]
  - `sex` [0,1,2]
  - `first_day` [boolean]
  - `menstruation`
  - `custom` [Array]
  - `notes`

Pull all cycle data
  `cycles = Kindara::Cycle.pull(client)`

Cycle data returns a series of Cycle objects
  - `bardo` [boolean]
  - `coverline` [integer or nil]
  - `custom` [Array]
  - `end` [date]
  - `pregnancy` [boolean]
  - `start` [date]
  - `temp_shift` [date]
  - `updated` [date]

Installing
==========

Add this line to your application's Gemfile:

    gem 'kindara-client', github: 'machikoyasuda/kindara-client-gem'

And then execute:

    $ bundle

Or install it yourself with:

    $ gem install kindara


Contributing
============

  1. Fork it
  2. Create your feature branch (`git checkout -b my-new-feature`)
  3. Commit your changes (`git commit -am 'Add some feature'`)
  4. Push to the branch (`git push origin my-new-feature`)
  5. Create new Pull Request


Changelog
=========

  - 1.0.0: Initial release


Conduct
=======

As contributors and maintainers of this project, we pledge to respect all people who contribute through reporting issues, posting feature requests, updating documentation, submitting pull requests or patches, and other activities.

We are committed to making participation in this project a harassment-free experience for everyone, regardless of level of experience, gender, gender identity and expression, sexual orientation, disability, personal appearance, body size, race, age, or religion.

Examples of unacceptable behavior by participants include the use of sexual language or imagery, derogatory comments or personal attacks, trolling, public or private harassment, insults, or other unprofessional conduct.

Project maintainers have the right and responsibility to remove, edit, or reject comments, commits, code, wiki edits, issues, and other contributions that are not aligned to this Code of Conduct. Project maintainers who do not follow the Code of Conduct may be removed from the project team.

Instances of abusive, harassing, or otherwise unacceptable behavior may be reported by opening an issue or contacting one or more of the project maintainers.

This Code of Conduct is adapted from the [Contributor Covenant](http:contributor-covenant.org), version 1.0.0, available at [http://contributor-covenant.org/version/1/0/0/](http://contributor-covenant.org/version/1/0/0/)


License
=======

Copyright (c) 2014 Machiko Yasuda

MIT License

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
