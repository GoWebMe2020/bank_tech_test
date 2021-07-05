# Bank Tech Test

## Purpose / Motivation

The purpose of this project is to focus on high quality code.

What makes code high quality?

* Ease to change
    - DRY code
    - Single Responsibility Principle
    - Readable
    - Proper indentation, clear naming (xyz v/s logged_in_user)
    - Following language or project conventions
    - Encapsulation -> making sure someone using a class is only able to use the “public” (interface) methods
    - Removing dead code
    - Use clear constants and avoid magic values
* Fully tested / Testing
    - Isolated classes in unit tests (mocks and doubles)
    - High test coverage
    - Feature tests
    - Testing behaviour, not state
    - Testing edge cases
    - Well-written / specific, readable tests
    - Clear RSpec/test descriptions or labels
    - Making sure tests don’t allow false positives (tests are specific)
* Documentation
    - Good README
      - What is the intent (what is this??)
      - How to run the app or the program
      - How to install
      - How to run the tests
    - Dependencies and stack (setup DBs, api keys, config, etc…)
    - Comments to explain the logic if it’s not clear or if some additional context is needed
    - Clear commit history to document your process

## User Stories

Given a client makes a deposit of 1000 on 10-01-2012
And a deposit of 2000 on 13-01-2012
And a withdrawal of 500 on 14-01-2012
When she prints her bank statement
Then she would see

date       || credit    || debit     || balance
14/01/2012 ||           || 500.00    || 2500.00
13/01/2012 || 2000.00   ||           || 3000.00
10/01/2012 || 1000.00   ||           || 1000.00

## Installation


## Running the code


## Tests


## Dependencies and Stack

* Ruby
* RSpec
* Simplecov


## Credits