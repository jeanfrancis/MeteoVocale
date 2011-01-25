#!/usr/bin/env rackup

begin
  require ::File.expand_path('.bundle/environment', __FILE__)
rescue LoadError
  require 'rubygems'
  require 'bundler'
  Bundler.setup
end

require './weather.rb'

run Weather::Application