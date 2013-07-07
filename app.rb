Bundler.require

# require initializers
Dir.glob("initializers/*.rb").each { |r| require_relative r }

# require controllers
Dir.glob("controllers/*.rb").each { |r| require_relative r }

# require helpers
Dir.glob("helpers/*.rb").each { |r| require_relative r }
