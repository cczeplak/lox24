# Lox24

Library to send text messages with the lox24.eu SMS gateway.

```
require "lox24"

Lox24.configure do |config|
  config.client = <Your ClientID>
  config.password = <Your Password>
  config.service = <One of your Service IDs>
  config.debug = false
end



msg = {
  to: "<receiver number>",
  from: "<sender number>",
  text: "<your text message>"
}

Lox24::Sms.create(msg)
```
