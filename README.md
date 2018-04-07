# watson-assistant-chatbot - A Ruby Chatbot for IBM Watson Assistant

[![Gem Version](https://badge.fury.io/rb/watson-assistant-chatbot.svg)](http://badge.fury.io/rb/watson-assistant-chatbot)

The [watson-assistant-chatbot](http://rubygems.org/gems/watson-assistant-chatbot) is a Ruby gem that provides a chatbot for [IBM Watson Assistant](https://www.ibm.com/watson/services/conversation/).

## Installation

To install watson-assistant-chatbot, run:

    gem install watson-assistant-chatbot

If not present, the above command will also install rest-client and json gems.

## Usage

```
require 'watson-assistant-chatbot'
require 'json'

chatbot = WatsonAssistant::Chatbot.new('user_id', 'password', 'workspace_id')

request = { "input" => { "text" => "hello" } }

puts chatbot.message(request.to_json)

```

## Credits

Copyright (C) 2018 [Julian I. Kamil / @juliankamil](https://twitter.com/juliankamil)

## License

The watson-assistant-chatbot is released under the MIT license, see [LICENSE](https://github.com/juliankamil/watson-assistant-chatbot/blob/master/LICENSE) for details.