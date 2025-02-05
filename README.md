# URBANopt Core

[![Coverage Status](https://coveralls.io/repos/github/urbanopt/urbanopt-core-gem/badge.svg?branch=develop)](https://coveralls.io/github/urbanopt/urbanopt-core-gem?branch=develop)
[![nightly_build](https://github.com/urbanopt/urbanopt-core-gem/actions/workflows/nightly_build.yml/badge.svg)](https://github.com/urbanopt/urbanopt-core-gem/actions/workflows/nightly_build.yml)

URBANopt<sup>TM</sup> core libraries and measures.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'urbanopt-core'
```

And then in the terminal, execute:

```terminal
    bundle
```

Or install it yourself as:

```terminal
    gem install 'urbanopt-core'
```

## Usage

This Extension Gem stores the base information needed for all derivative URBANopt extension gems.

## Releasing

* Update CHANGELOG.md
* Run `rake rubocop:auto_correct`
* Update version in `/lib/urbanopt/core/version.rb`
* Create PR to master, after tests and reviews complete, then merge
* Locally - from the master branch, run `rake release`
& On GitHub, go to the releases page and update the latest release tag. Name it “Version x.y.z” and copy the CHANGELOG entry into the description box.
