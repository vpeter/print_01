# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_print_01_session',
  :secret      => '2933963cebaf3dbe6d919e12cfd1072f0352344088a597a1da3e4c0a60022242265c607e172e864c7d6728057cfff163d83028e7ade7da5bae819a1e84ca336b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
