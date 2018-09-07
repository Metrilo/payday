# CHANGELOG

## 1.2.0 (2018-09-07)
* Bumped ruby version to 2.5.1 from 2.1.5
* Bumped money gem to 6.9 from 6.6
* Bumped rspec gem to 3.5 from 3.1
* Fix initializing Payday::Invoice.new with default values
* Package with OpenSans font and remove dependency to Rails
* Fix breaking specs when rendering with OpenSans font

## 1.1.4 (2015-05-29)

* Bumped money gem to 6.5 (was 6.1.1)
* Bumped i18n gem to 0.7 (was 0.6.11)
* Added German translation for invoice date.

## 1.1.3 (2015-01-02)

* Loosened requirements on Money gem.
* Bumped rspec to latest and cleared up a deprecation warning.
* Added support for `invoice_date` field (thanks [danielma](https://github.com/danielma)!)
* Bugfix: Resolved issue where money values were being shown at 1/100th of the intended amount (thanks [watsonbox](https://github.com/watsonbox)!)

## 1.1.2 (2014-05-03)

* Added NL locale (thanks [jedi4ever](https://github.com/jedi4ever)!).
* Updated Prawn to 1.0.
* Updated Prawn SVG to 0.15.0.0.
* Updated Money to 6.1.1.
* Updated i18n to 0.6.9.

## 1.1.1 (2013-07-20)

* Added support for zh-CN locale (thanks [Martin91](https://github.com/Martin91)!).
