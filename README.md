# Bank Tech Test Readme

A practice bank tech test given in Week 10 of Makers Academy to practice OO and TDD skills.

This is version 1 of this tech test, which will be deleted and repeated. The purpose of this test is to work alone, review my own code so you can practice reflecting on and improving my own work.

# Requirements

* You should be able to interact with the your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).
Acceptance criteria


Given a client makes a deposit of 1000 on 10-01-2012

And a deposit of 2000 on 13-01-2012

And a withdrawal of 500 on 14-01-2012

When she prints her bank statement Then she would see

date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00


# My Approach

## User Stories
I began designing my program in an Object Orientated approach by creating User Stories according to the Acceptance criteria example. This enabled me to break the criteria down to focus on the client requirements:

```
1.
As a client
So that I can add funds to my bank account
I would like to deposit money
```

```
2.
As a client
So that I can access the funds in my bank account
I would like to withdraw money
```

```
3.
As a client
So that I can see my bank account history
I would like to see a printed bank statement
```

## Nouns & Verbs table
Following a BDD approach I subsequently used these User Stories to create a simple table of Nouns & Verbs, which I used to then create an outline of my Classes and anticipated Methods. In my first table I had my deposit and withdrawal as methods within the Bank Account. However, after re-reading the requirements I decided that Deposit and Withdrawal needed to be separate classes, that were responsible for the make a deposit and make a withdrawal methods within them.

The Client however needed to have an interface class, the Bank Account class, that would enable them to carry out these actions and invoke these methods without directly interacting with these classes. Following SOLID principles, I strove to ensure that I designed my OO program using the Single responsibility principle from the offset.

| Nouns                   | Verbs                        |
|:-------:                |-------------                 |
| Client                  | ----------                   |
| Bank Account            | Manage deposits & withdrawals|
| Deposit                 | Make a deposit               |
| Withdrawal              | Make a withdrawal            |
| Bank Account Statement  | Print bank statement         |



# Class Descriptions
Here are the descriptions of my classes which show the responsibility of each class within the domain of the program.

**Bank Account**
- The interface that allows the client to manage their funds

**Deposit**
- Manages deposits to a bank account

**Withdrawal**
- Manages withdrawals from a bank account

**Bank Account Statement**
- Manages printing a client's bank statement
