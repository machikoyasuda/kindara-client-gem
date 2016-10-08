# Kindara API Ruby Gem

  [![Gem Version](https://badge.fury.io/rb/kindara-client.svg)](https://badge.fury.io/rb/kindara-client)[![Issues](http://img.shields.io/github/issues/machikoyasuda/kindara-client-gem.svg?style=flat-square)](http://github.com/machikoyasuda/kindara-client-gem/issues)  [![License](http://img.shields.io/badge/license-MIT-brightgreen.svg?style=flat-square)](http://opensource.org/licenses/MIT)

The [Kindara Client API gem](https://rubygems.org/gems/kindara-client) will allow users to access their own [Kindara](http://kindara.com) cycle and day data through the Kindara API. Kindara is a popular period-tracking, fertility awareness method application that allows users to save daily temperature and other data points to track their health.

## Installing in your application

1. Add this line to your application's Gemfile:

    ```gem 'kindara-client', github: 'machikoyasuda/kindara-client-gem'```

2. And then execute:

    ```bundle```

## Installing it on your machine

```gem install kindara-client```

## Installing it on command line

`require "kindara-client"`

## Using the gem

- Authenticate yourself with:

`client = Kindara::Account.authenticate("YOUR-EMAIL", "YOUR-PASSWORD")`

- Pull account information and save that as an Kindara::Account object:

`account = Kindara::Account.info(client)`

- Get all Days data as an Array of Kindara::Day objects:

`days = Kindara::Day.pull(client)`

- Get all Cycles data as an Array of Kindara::Cycle objects:

`cycles = Kindara::Cycle.pull(client)`

## Understanding the data

|model|description|code|
|-----|-----------|----|
|account|Your personal account data|Kindara::Account|
|days|All data from each day|Kindara::Day|
|cycles|All data from each cycle|Kindara::Cycle|

#### Account:
  - `average_cycle` [float]
  - `average_luteal` [float]
  - `average_period` [float]
  - `username` [string]

#### Days:
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

#### Cycle:  
Cycle data returns a series of Cycle objects
  - `bardo` [boolean]
  - `coverline` [integer or nil]
  - `custom` [Array]
  - `end` [date]
  - `pregnancy` [boolean]
  - `start` [date]
  - `temp_shift` [date]
  - `updated` [date]

## Testing

To run the tests, make sure you have `Rspec` installed and run `rspec`

## Contributing

  1. Fork it
  2. Create your feature branch (`git checkout -b my-new-feature`)
  3. Commit your changes (`git commit -am 'Add some feature'`)
  4. Run the specs (`rspec`)
  5. Push to the branch (`git push origin my-new-feature`)
  6. Create new Pull Request


## Change log

  - 1.0.0: Initial release
