# PostgresExt

Provides a helpful querying API for Rails 4 + PostgreSQL

[![Build Status](https://secure.travis-ci.org/dockyard/postgres_ext.png?branch=master)](http://travis-ci.org/dockyard/postgres_ext)
[![Code Climate](https://codeclimate.com/badge.png)](https://codeclimate.com/github/dockyard/postgres_ext)

## Looking for help? ##

If it is a bug [please open an issue on
Github](https://github.com/dockyard/party_foul/issues). If you need help using
the gem please ask the question on
[Stack Overflow](http://stackoverflow.com). Be sure to tag the
question with `DockYard` so we can find it.

## Note ##
PostgresExt is dropping support for Ruby 1.8.7 with the next minor
release.

## Installation

Add this line to your application's Gemfile:

    gem 'postgres_ext'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install postgres_ext

## Usage

Just `require 'postgres_ext'` and use ActiveRecord as you normally would! postgres\_ext extends
ActiveRecord's data type handling.

 * [Querying PostgreSQL datatypes](docs/querying.md)

## Authors

Dan McClain [twitter](http://twitter.com/_danmcclain) [github](http://github.com/danmcclain)

