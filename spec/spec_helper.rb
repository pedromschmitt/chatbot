# spec/spec_helper.rb
require 'rack/test'
require 'rspec'
require_relative '../app.rb'

set :environment, :test

module RSpecMixin
  include Rack::Test::Methods

  def app
    App
  end
end

#RSpec.configure { |c| c.include RSpecMixin }
RSpec.configure do |c|
  c.include RSpecMixin
end