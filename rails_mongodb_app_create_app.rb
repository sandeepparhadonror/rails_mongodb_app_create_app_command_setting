
rails plugin new some_engine --mountable --skip-active-record


# add to 'ENGINE_NAME.gemspec'
s.add_dependency 'mongoid'
s.add_dependency 'bson_ext'
s.add_dependency 'mongo_ext'

 OR # add to 'Gemfile'
gem 'mongoid'
gem 'bson_ext'
gem 'mongo_ext'

# add to 'lib/ENGINE_NAME/engine.rb'
config.generators do |g|
    g.orm :mongoid
end

######## create moggodb yml file 

$ cd test/dummy 
$ rails g mongoid:config

#######Then  change the rails file under script/rails folder as it's having:

require 'rails/all'

to

require "action_controller/railtie"
require "action_mailer/railtie"
require "active_resource/railtie"
require "rails/test_unit/railtie"

add test/dumy/config/application.rb

require 'rack/mongoid' # TADA!
require "mongoid/railtie"

