#!/usr/bin/env ruby
require 'drb'
require 'watir-webdriver'
 
DRb.start_service 'druby://:9000', Watir::Browser.new(:firefox)
trap("INT") { DRb.stop_service }
DRb.thread.join
