---
class: notes-sea-rocks
---
@import "/styles/notes.less" <!-- vscode -->

# watson-assistant-chatbot
## A Ruby Chatbot for IBM Watson Assistant

[![Gem Version](https://badge.fury.io/rb/watson-assistant-chatbot.svg)](http://badge.fury.io/rb/watson-assistant-chatbot)

The [`watson-assistant-chatbot`](http://rubygems.org/gems/watson-assistant-chatbot) is a Ruby gem that provides a chatbot client wrapper for [IBM Watson Assistant](https://www.ibm.com/watson/services/conversation/).

## Installation

To install `watson-assistant-chatbot`, run:

```shell { .line-numbers }
gem install watson-assistant-chatbot
```

If not present, the above command will also install `rest-client` and `json` gems.

## Usage

```ruby { .line-numbers }
require 'watson-assistant-chatbot'
require 'json'

# get a chatbot instance
chatbot = WatsonAssistant::Chatbot.new_with_api_key('workspace_id', 'api_key')

# set a request with an utterance
request = { "input" => { "text" => "hello" } }

# send the request and get the json results
results = chatbot.message(request.to_json)

# display the chatbot response text
puts chatbot.response_text(results)
```

In the above example, `results` is a JSON object containing the "output" and "context" returned by IBM Watson Assistant. 

```json { .line-numbers }
{
    "output": { "intents": [], "entities": [], ... },
    "context": { ... }
}
```

See [IBM Watson Assistant v2 API documentation](https://cloud.ibm.com/apidocs/assistant-v2#send-user-input-to-assistant-stateless) for more details on this response object.

## Prerequisites

- IBM Watson Assistant instance configured with a skill

## References

- Getting started with IBM Watson Assistant
  https://cloud.ibm.com/docs/assistant?topic=assistant-getting-started#getting-started

- IBM Watson Assistant v2 API documentation
  https://cloud.ibm.com/apidocs/assistant-v2#send-user-input-to-assistant-stateless

## Credits

Copyright (c) 2018 - 2020 [Julian I. Kamil / @juliankamil](https://twitter.com/juliankamil)

## License

The watson-assistant-chatbot is released under the MIT license, see [LICENSE](https://github.com/juliankamil/watson-assistant-chatbot/blob/master/LICENSE) for details.
