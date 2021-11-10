# Setup Bats Libs

GitHub Action to setup the three major [bats](https://github.com/bats-core/bats-core) libs:

* [bats-support](https://github.com/bats-core/bats-support)
* [bats-assert](https://github.com/bats-core/bats-assert)
* [bats-detik](https://github.com/bats-core/bats-detik)

## How to use it

Can be used in duo with [setup-bats](https://github.com/mig4/setup-bats) action
to setup all the bats libs you need for your CI jobs.

An example:

``` yaml
on: [push]

jobs:
   my_test:
     runs-on: ubuntu-latest
     name: Install Bats common libs
     steps:
       - name: Checkout
         uses: actions/checkout@v2
       - name: Setup BATS
         uses: mig4/setup-bats@v1
       - name: Install Bats-libs
         uses: ./
```

## Inputs
