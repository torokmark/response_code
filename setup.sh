#!/usr/bin/env bash

rbenv install 2.5.0
rbenv local 2.5.0

gem install bundler

bundle install
