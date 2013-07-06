#configure twitter
Twitter.configure do |config|
  config.consumer_key = 'rw5RHxWAeO7O5bZlA46w'
  config.consumer_secret = 'kIO62Vw0C6HRhTJqqSYMOlDfa2Ui85qz0KuiZu9wA68'
  config.oauth_token = '24029639-C9gwbdpuj2Elx7LdAyPPAkkws1dZUjWoQwGNjma7P'
  config.oauth_token_secret = 'MBEDEUSCD0U0LOOAg91zmfED7whqkDq10PfO27js'
end

# require controllers
Dir.glob("controllers/*.rb").each { |r| require_relative r }

# require helpers
Dir.glob("helpers/*.rb").each { |r| require_relative r }
