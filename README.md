# ResponseCode

[![Build Status](https://travis-ci.org/torokmark/response_code.svg?branch=master)](https://travis-ci.org/torokmark/response_code)

Who knows which response code represents the partial content? Or what code belongs to the error that says the request uri too long? Do you know the status code of the teapot?

ResponseCode is a tiny tool intended to give a handy way of handling response status codes with text instead of numbers.

### Install

```ruby
gem install response_status
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

