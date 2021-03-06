# Flow for Tests of site automationpractice

This Tests use the BDD framework is based in Ruby + Cucumber + Capybara + Rspec + SitePrism.

## Dependencies

* Ruby 2.5.5
* capybara
* cucumber
* rspec
* selenium-webdriver
* webdrivers
* pry
* rake
* site_prism

## Installation Instructions

### Project Installation

* unzip the project
* access the path and execute $ bundle install
** is necessary environment RUBY installed in machine

## Suport Tools

* from Windows use: https://rubyinstaller.org/
* from MAC or LINUX use: https://bddsemcomplicacao.blogspot.com/2019/07/criando-um-projeto-no-mac-os-do-zero.html

## Run Tests
* chrome is browser default

### Run All Tests
type: $front-end-automation>cucumber features\*

### Run only Search Tests
type: $front-end-automation>cucumber features\specs\automationpractice.feature

### Run only Signup Tests
type: $front-end-automation>cucumber features\specs\signup.feature

### Run Sucess Tests
type: $front-end-automation>cucumber features\specs\* --tag @success

### Run Tests with error message
type: $front-end-automation>cucumber features\specs\* --tag @errorMessage

### Rum Error Test (forced error)
type: $front-end-automation>cucumber features\specs\* --tag @error

### Rum Testes using Firefox
type: $front-end-automation>cucumber features\* BROWSER=firefox --tag @1

## View Report
Report is generated in $front-end-automation\reports in html format
- $front-end-automation\reports\execution_report.html
