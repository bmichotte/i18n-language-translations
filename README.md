I18nLanguageTranslations
========================

The purpose of this gem is to simply provide language translations.
The translations are extracted from [Zend Framework](http://framework.zend.com) data files.

This gem is based on [I18nCountryTranslations](https://github.com/onomojo/i18n-country-translations)

## Installation

Add to your Gemfile:

    gem 'i18n-language-translations'

## Usage

  I18n.t(:US, :scope => :languages)
  
or
  
  t(:US, :scope => :languages)

## Version History
0.0.2 - Initial version

## License
[MIT](https://github.com/bmitchotte/i18n-language-translations/blob/master/MIT-LICENSE)
The translations are under [the New BSD License](http://framework.zend.com/license/)

## Special thanks
@onomojo for all the code :)