require 'rubygems'
require 'bundler'
Bundler.require

class Redirect
  BLOG_URL = 'http://blog.soff.es'.freeze

  def self.call(env)
    response = Rack::Response.new
    response.redirect BLOG_URL + Rack::Request.new(env).path
    response.finish
  end
end

run Redirect
