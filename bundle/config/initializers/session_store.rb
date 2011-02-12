# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_bundle_session',
  :secret      => 'a745690fa382aab31135fcd95678b162b1a3a717eb65873a3fb1b929468049c4e4959a8a712789ad7c38d2be7530e5f533df0e9bed490f1b5f46fbb7bc813508'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
