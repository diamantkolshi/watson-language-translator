# watson-language-translator

Language Translator translates text from one language to another. The service offers multiple domain-specific models that you can customize based on your unique terminology and language. Use Language Translator to take news from across the globe and present it in your language, communicate with your customers in their own language, and more.

For more informations you can read [here](https://www.ibm.com/watson/developercloud/doc/language-translator/index.html)

## Prerequisites

To get an API username and password, you'll need to [sign up for IBM Bluemix](https://console.ng.bluemix.net/registration/). After you create an account:

Log in to Bluemix and go to the AlchemyAPI service page.
Click the "Create" button.
Click the "Service Credentials" button from the Language Tranlator page in your Bluemix dashboard to view your API username and password.

You authenticate to the Language Translator API by providing the username and password that are provided in the service credentials for the service instance that you want to use. The API uses Basic Authentication.

After creating an instance of the Language Translator service, select Service Credentials from the left navigation for its dashboard to see the username and password that are associated with that instance.

Note: Service credentials ("username" and "password") are different from your Bluemix account username and password.

After create bluemix account and create username and passowrd credencials, you can use another gem for env variables as ([dotenv](https://github.com/bkeepers/dotenv), [figaro](https://github.com/laserlemon/figaro) or which you want to create env variables).

Then in (.env) file you should add:

```ruby
language_translator_username=$your_username_from_bluemix
language_translator_password=$your_password_from_bluemix
```

watson_langauge_translator will take your username and password and it will do request with this credencials, it's it!

## Getting Started in ruby
You can install this library

`gem install 'watson-language-translator'`

and use

```ruby
require 'watson-language-translator'
```

## Getting Started in Rails
AlchemyLanguage works with Rails > 4.1 onwards. You can add it to your Gemfile with:

```ruby
gem 'rest-client'
gem 'watson-language-translator'
```

Then run `bundle install`

## Use

### Models 
  
  All Services contain these models:

  ```
    .
    ├── Translate
    ├── IdentifiableLanguages
    ├── IdentifyLanguage
    ├── ListModels
    ├── ModelDetails
    ├── Model (create)
    ├── Model (delete)
  
    7 models
  ```

#### Translate

Translates input text from the source language to the target language.

  ```ruby
    @language_translate = WatsonLanguage::Translator.new("hello",
      source: "en",
      target: "es",
      http_method: "post"
    )
  
    @language_translate.result  # => {"translations"=>[{"translation"=>"Hola"}], "word_count"=>1, "character_count"=>5}
 ```
 
#### Identifiable languages
Return the list of languages it can detect.

  ```ruby
    @identifiable_languages = WatsonLanguage::IdentifiableLanguages.fetch
  
    @identifiable_languages.result  # => { "languages": [ { "language": "af", "name": "Afrikaans"}, { "language": "ar", "name": "Arabic" }, ...] }
 ```

#### Identify language
Identify the language in which a text is written.

 ```ruby
    @identify_language = WatsonLanguage::IdentifyLanguage.new("this is a text")
  
    @identify_language.result  # => { "languages": [ { "confidence": 0.9143, "language": "en-US" }, { "confidence": 0.0396, "language": "hu-HU" }, //... ] }
 ```
 
#### List Models 
Lists available models for the Language translator service with option to filter by source or by target language.

 ```ruby
    @list_models = WatsonLanguage::ListModels.fetch
  
    @list_models.result  # => { "models": [ { "model_id ": "3e7dfdbe-f757-4150-afee-458e71eb93fb", "source": "en", "target": "es", "base_model_id": "en-es",.. }, //... ] }
 ```
#### Model Details
Returns information, including training status, about a specified translation model.

 ```ruby
    @model_details = WatsonLanguage::ModelDetails.fetch(model_id: "en-es")
  
    @model_details.result  # => { "models": [ { "model_id ": "3e7dfdbe-f757-4150-afee-458e71eb93fb", "source": "en", "target": "es", "base_model_id": "en-es",.. }, //... ] }
 ```
 
## License

This project is licensed under the MIT License
