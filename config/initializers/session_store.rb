# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_coupon_tracker_session',
  :secret      => '19eae13c8a600787ec2eed4a5d1ffd337de27c5eea1372833311ae2b54ec6bfdd73ea00f988c7fd620b06eb1c563ace144fb12efc6c34a80e29d714bc7bcba8a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
