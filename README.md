# Setup Bats and Bats libraries

This GitHub Action installs [Bats](https://github.com/bats-core/bats-core) and the four major bats libraries:

* [bats-support](https://github.com/bats-core/bats-support)
* [bats-assert](https://github.com/bats-core/bats-assert)
* [bats-detik](https://github.com/bats-core/bats-detik)
* [bats-file](https://github.com/bats-core/bats-file)

The action can be also instructed to select which libraries to install.

## How to use it

``` yaml
on: [push]

jobs:
   my_test:
     runs-on: ubuntu-latest
     name: Install Bats and bats libs
     steps:
       - name: Checkout
         uses: actions/checkout@v2
       - name: Setup Bats and bats libs
         uses: brokenpip3/setup-bats-libs@1.0.0
```

## Libraries Path

For each of the Bats libraries, you can choose to install them in the default location (`/usr/lib/bats-<lib-name>`) or specify a custom path.

For example, if you want to install `bats-support` in the `./test/bats-support` directory, you can configure it as follows:


``` yaml
# ...
       - name: Setup Bats and Bats libs
         uses: brokenpip3/setup-bats-libs@0.1.0
         with:
           support-path: ${{ github.workspace }}/test/bats-support
```

## Inputs

| Key              | Default | Required | Description                                    |
|------------------|---------|----------|------------------------------------------------|
| bats-install     | `true`    | false    | Bats installation, cache supported              |
| bats-version     | `latest`  | false    | Bats version   |
| support-install  | `true`    | false    | Bats-support installation      |
| support-version  | `0.3.0`   | false    | Bats-support version       |
| support-path     | `/usr/lib/bats-support` | false | Bats-support path |
| support-clean    | `true`    | false    | Bats-support: clean temp files                  |
| assert-install   | `true`    | false    | Bats-assert installation      |
| assert-version   | `2.1.0`   | false    | Bats-assert version         |
| assert-path      | `/usr/lib/bats-assert` | false | Bats-assert path |
| assert-clean     | `true`    | false    | Bats-assert: clean temp files                   |
| detik-install    | `true`   | false    | Bats-detik installation        |
| detik-version    | `1.2.0`   | false    | Bats-detik version        |
| detik-path       | `/usr/lib/bats-detik` | false | Bats-detik path |
| detik-clean      | `true`    | false    | Bats-detik: clean temp files                    |
| file-install     | `true`    | false    | Bats-file installation     |
| file-version     | `0.3.0`   | false    | Bats-file version            |
| file-path        | `/usr/lib/bats-file` | false | Bats-file path   |
| file-clean       | `true`    | false    | Bats-file: clean temp files                     |

## Outputs

| Key              | Description                                    |
|------------------|------------------------------------------------|
| bats-installed   | True/False if bats has been installed          |
| support-installed| True/False if bats-support has been installed  |
| assert-installed | True/False if bats-asssert has been installed  |
| detik-installed  | True/False if bats-detik has been installed    |
| file-installed   | True/False if bats-file has been installed     |

## TODO

* [X] Add more tests

* [X] Add Bats binary

* [X] Add cache for bats binary

* [X] Better Readme

* [x] Remove sudo in case of bats libs installed in $HOME

* [x] Add cache for bats libs
