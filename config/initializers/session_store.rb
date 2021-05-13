if Rails.env === 'production' 
    Rails.application.config.session_store :cookie_store, key: '_spellchecker2', domain: 'spellchecker2-json-api'
  else
    Rails.application.config.session_store :cookie_store, key: '_spellchecker2'