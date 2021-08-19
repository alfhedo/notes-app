#!/bin/sh
bundle install

yarn install --check-files

rails db:setup 

rails s -b 0.0.0.0
