# viewable-gem

:octocat:

[![Build Status](https://travis-ci.org/crmis/viewable.svg?branch=master)](https://travis-ci.org/crmis/viewable)
[![Code Climate](https://codeclimate.com/github/crmis/viewable-gem/badges/gpa.svg)](https://codeclimate.com/github/crmis/viewable-gem)
[![Dependency Status](https://gemnasium.com/crmis/viewable-gem.svg)](https://gemnasium.com/crmis/viewable-gem)

## Installation

Viewable works with Rails 4.0. Add this line to your Gemfile:

    gem 'bookable', '~> 0.0.52'

Then execute:

    $ bundle

Or install it yourself as:

    $ gem install viewable

After you've installed the gem, you need to run the generator:

    $ rails generate viewable:install

Alternatively you can specify a named resource such as 'room'

    $ rails generate viewable:install room

The generator will create the file structure you need to implement viewing functionality into your app:
<ul>
  <li>controllers</li>
  <li>models - resource(tennis_court) and viewing</li>
  <li>views</li>
  <li>javascript - which uses the jQuery Full Calendar (old) plugin</li>
  <li>css - some basic CSS is provided which you may want to override</li>
</ul>
The necessary routes will be applied to your routes file and you will need to run, you may want to edit the migration file.

    $ rake db:migrate
