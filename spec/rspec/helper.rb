# Frozen-string-literal: true
# Copyright: 2017 Jordon Bedwell - MIT License
# Encoding: utf-8

require "rspec"
require "luna/rspec/formatters/checks"
require "jekyll/posts_by_year"
require "jekyll"

Dir[File.expand_path("../../support/*.rb", __FILE__)].each do |v|
  require v
end
