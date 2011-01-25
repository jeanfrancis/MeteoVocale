# Phonecast
## A simple example of using the Twilio API to gather information from a caller and return their weather forecast

## Demo

To get your weather forecast, dial [(512) 518-5868](tel:+15125185868)

## Fork it yourself!

You can deploy and run your own instance of this site in just a few easy steps:

- Pull down a copy of this project for yourself, with `git clone git://github.com/mattt/Phonecast.git`
- `cd` into your project and do `bundle install`
- Create a [Heroku](http://heroku.com) application, with `heroku create`, and take note of the URL for your newly-created application
- Go to [Twilio](http://twilio.com) and login or create an account
- On your [Account Dashboard](https://www.twilio.com/user/account/), scroll down to **Sandbox**
- In the **Voice URL** field, enter the URL for your Heroku application (noted previously), with the path `/prank.twiml` appended to it, and click **Save**
- Copy your Twilio Sandbox number, go back to you project directory, and set that number into your Heroku Application's config, with `heroku config:add TWILIO_PHONE_NUMBER=#{Your Sandbox Number Here}`
- Likewise, add your Twilio credentials, with `heroku config:add TWILIO_ACCOUNT_SID='AC#{Your Account ID}' TWILIO_ACCOUNT_TOKEN='#{Your Account Token}'`
- Deploy your application, with `git push heroku master`, and you're all set! Try it out!

## Problem?

If your application is serving errors, you have two places to look for debugging information:

First, check that your application is serving up XML correctly by doing `curl -X POST "http://#{Your App Subdomain}.heroku.com/weather.twiml"`. One common source of error is not setting your `TWILIO_PHONE_NUMBER` constant, so make sure that's on the up-and-up, with `heroku config`. As a last resort, check out `heroku logs` or `heroku console` to figure out what's going on.

If everything is looking good on the Heroku front, but you're still encountering problems, check the [Twilio Debugger](https://www.twilio.com/user/account/debugger). Each call made to your application is logged, along with its status and response. One thing to check if you're not seeing what you expected on the debugger, is that your Sandbox URL is hooked up to your Heroku application, with the URL `http://#{Your App Subdomain}.heroku.com/prank.twiml`.

## Further Reading

For more information on the Twilio platform, be sure to check out the [official docs](http://www.twilio.com/docs/index).

## License

Phonecast is licensed under the MIT License:

  Copyright (c) 2011 Mattt Thompson (http://mattt.me/)

  Permission is hereby granted, free of charge, to any person obtaining a copy
  of this software and associated documentation files (the "Software"), to deal
  in the Software without restriction, including without limitation the rights
  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
  copies of the Software, and to permit persons to whom the Software is
  furnished to do so, subject to the following conditions:

  The above copyright notice and this permission notice shall be included in
  all copies or substantial portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
  THE SOFTWARE.
