# ResponseCode

[![Build Status](https://travis-ci.org/torokmark/response_code.svg?branch=master)](https://travis-ci.org/torokmark/response_code)
[![Gem Version](https://badge.fury.io/rb/response_code.svg)](https://badge.fury.io/rb/response_code)

Who knows which response code represents the partial content? Or what code belongs to the error that says the request uri too long? Do you know the status code of the teapot?

ResponseCode is a tiny tool intended to give a handy way of handling response status codes with text instead of numbers.

### Install

```ruby
gem install response_code
```

or

```ruby
gem 'response_code'
```

### Usage

```ruby
require 'response_code'

puts ResponseCode.ok
# => 200
```

Using sinatra

```ruby
#!/usr/bin/env ruby 

require 'sinatra'
require 'response_code'

get('/') {
  status ResponseCode.im_a_teapot
  'I\'m a teapot!' 
}
```

Executing `curl -i localhost:4567`

```
HTTP/1.1 418  
Content-Type: text/html;charset=utf-8
Content-Length: 13
X-Xss-Protection: 1; mode=block
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
Server: WEBrick/1.4.2 (Ruby/2.5.0/2017-12-25)
Date: Thu, 03 May 2018 18:24:12 GMT
Connection: Keep-Alive

I'm a teapot!
```
