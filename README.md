# algo-playground

This is a repo where I toy around with some algorithms to keep my knowledge of algorithms up-to-date. Some algorithms are quite simple, some are a bit more complex.

## Installation

1. Clone the repo
2. Make sure you have `ruby 3.0.0` installed on your system. If not, I recommend using [RVM](http://rvm.io/) to setup ruby on your system.
3. Run `bundle` to install the gems

## Running the unit tests

Unit tests are located in the `test` folder. I aim to have a good test coverage, of the algorithms as well as the library functions.

To run the tests, use the included rake tast:

```bash
rake test
```

## Type checking

Signatures for the algorithms and the library functions are provided in the `sig` folder. As well as with tests, I aim to have a good coverage for the signatures, as this makes developing with ruby more fun.

To validate the signatures, use:

```bash
steep validate
```

and to typecheck the files, use

```bash
steep check
```