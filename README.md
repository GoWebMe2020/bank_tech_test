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

| Date       | Credit | Debit | Balance |
|:-----------|:-------|:------|:--------|
| 14/01/2012 | 1000   | 0     | 1000    |
| 13/01/2012 | 1000   | 0     | 2000    |
| 10/01/2012 | 0      | 500   | 1500    |


## Installation

* Clone this repo
* Open irb in your terminal
* Create a new account
* Use the relevant methods to deposit, withdraw and print statements.

## Running the code

* cd into the relevant directory and run rspec
* You can open the index.html file in the coverage folder to see the coverage.

## Tests

### Account

* ensures that every new account starts with a 0 balance
* ensures that every account has a STARTING_BALANCE of 0
* can create a new account
* increases the balance available when a deposit is made
* decreases the balance when a withdrawel is made
* will not let the user draw the account to below 0 (edge case)

### Statement

* has an empty transactions variable
* has a transactions variable that stores transactions
* prints out the transactions in the Statement

## Dependencies and Stack

* Ruby
* RSpec
* Simplecov

## Credits

JP Ferreira