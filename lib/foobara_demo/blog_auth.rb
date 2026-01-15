require "foobara/all"
require "foobara/auth"
require "foobara_demo/blog"

module FoobaraDemo
  module BlogAuth
    foobara_domain!

    foobara_depends_on Foobara::Auth, FoobaraDemo::Blog
  end
end

Foobara::Util.require_directory "#{__dir__}/../../src"
