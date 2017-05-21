require 'rubygems'
require 'bundler/setup'

Dir.glob("spec/steps/**/*steps.rb") { |f| load f, true }

require 'capybara/rspec'
require 'capybara/poltergeist'
require 'turnip'
require 'turnip/capybara'
require 'selenium-webdriver'
#Capybara.default_driver = :poltergeist
#Capybara.javascript_driver = :poltergeist
Capybara.default_driver    = :selenium
Capybara.javascript_driver = :selenium
