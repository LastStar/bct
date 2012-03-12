PADRINO_ENV = 'test' unless defined?(PADRINO_ENV)
require File.expand_path(File.dirname(__FILE__) + "/../config/boot")

require 'capybara/rspec'

RSpec.configure do |conf|
  conf.include Rack::Test::Methods
  Capybara.app = Bct
end

def app
  Bct.tap { |app|  }
end

def unlink_addresses
  File.unlink('spec/addresses.txt') rescue nil
end

def addresses
  File.read('spec/addresses.txt')
end
