require 'rubygems'
require 'bundler'
Bundler.require

class Redirect
  BLOG_URL = 'http://blog.soff.es'.freeze

  def self.call(env)
    request = Rack::Request.new(env)

    url = BLOG_URL + request.path

    response = Rack::Response.new
    response.redirect url
    response.finish
  end
end

run Redirect
